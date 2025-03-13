import 'package:faker/faker.dart' hide Address;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/address/address.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:nobot/core/repository.dart';
import 'package:nobot/core/scaffold/nav/nav.dart';
import 'package:nobot/core/scaffold/view/base_scaffold.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:nobot/core/widgets/form/view/form_modal/short_form_modal.dart';
import 'package:nobot/features/customers/view/widgets/customer_detail_modal.dart';

import '../../../../core/models/customer/customer.dart';
import '../../../../core/widgets/form/domain/input.dart';
import '../../../../injection.dart';
import '../../../auth/data/auth.dart';

class CustomersPage extends StatefulWidget {
  final Auth auth;
  const CustomersPage(this.auth, {super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BaseScaffold(
      widget.auth,
      title: labels.customers,
      selectedItem: NavItem.customers,
      actions: const [
        _AddFakeCustomers(),
        SizedBox(width: 16),
        _AddCustomerButton(),
      ],
      body: FutureBuilder(
        initialData: const <Customer>[],
        future: sl<Repository>().getList<Customer>(Entities.customer),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Text(labels.loading)
              : snapshot.hasError
                  ? Text(labels.unknownError)
                  : snapshot.data!.isEmpty
                      ? const Text('no customers')
                      : ListView.builder(
                          itemExtent: 50,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final customers = snapshot.data!;
                            return Card.filled(
                              child: ListTile(
                                leading: Text(index.toString()),
                                title: Text(customers[index].name.getOrCrash),
                                onTap: () {
                                  CustomerDetailModal(customers[index]).show();
                                },
                              ),
                            );
                          },
                        );
        },
      ),
    );
  }
}

class _AddFakeCustomers extends StatelessWidget {
  const _AddFakeCustomers();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final customers = List.generate(
          10000,
          (index) {
            return Customer(
              id: Faker().guid.guid(),
              name: VString(faker.person.name()),
              address: Address(
                VString(faker.address.streetAddress()),
                LatLng(
                  faker.geo.latitude(),
                  faker.geo.longitude(),
                ),
              ),
              products: {},
            );
          },
        );
        sl<Repository>().createManyCustomers(
          Entities.customer,
          customers,
        );
      },
      child: const Text('Seed data'),
    );
  }
}

class _AddCustomerButton extends StatelessWidget {
  const _AddCustomerButton();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return FilledButton(
      onPressed: () {
        shortFormModal(
          title: labels.addCustomerTitle,
          inputs: [
            Input.vstring(VString.empty(), labelText: labels.name),
            Input.address(Address.empty(), labelText: labels.address),
          ],
          submitHook: (inputs) async {
            sl<Repository>().create(
              Entities.customer,
              Customer(
                id: '',
                name: inputs[0].value as VString,
                address: inputs[1].value as Address,
                products: {},
              ),
            );
          },
        ).show();
      },
      child: Text(labels.add),
    );
  }
}
