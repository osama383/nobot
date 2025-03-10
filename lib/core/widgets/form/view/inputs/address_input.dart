import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:nobot/core/widgets/form/bloc/form_bloc.dart';

import '../../../../models/address/address.dart';
import '../../domain/input.dart';

class AddressInput extends StatefulWidget {
  final Input<Address> initial;
  final String labelText;

  const AddressInput(
    this.initial, {
    super.key,
    required this.labelText,
  });

  @override
  State<AddressInput> createState() => _AddressInputState();
}

class _AddressInputState extends State<AddressInput> {
  final typeAheadController = TextEditingController();

  @override
  void initState() {
    typeAheadController.text = widget.initial.value.formattedAddress.getOrEmpty;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormState>(
      builder: (context, state) {
        return TypeAheadField<Address>(
          controller: typeAheadController,
          hideOnEmpty: true,
          hideOnSelect: true,
          suggestionsCallback: (search) async {
            return [
              Address(
                VString('1140 Walnut Ave, Grand Junction, CO'),
                const LatLng(42.3455, 41.555),
              ),
            ];
            // if (search.isNotEmpty) {
            //   var result = await _googlePlace.findAutocompletePredictions(value);
            //   return result.predictions;
            // } else {
            //   address = Address.empty();
            //   return [];
            // }
          },
          builder: (context, controller, focusNode) {
            return TextFormField(
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecoration(labelText: widget.labelText),
              validator: (value) {
                return state.input<VString>(widget.initial.id).value.value.fold(
                      (f) => 'Required',
                      (_) => null,
                    );
              },
            );
          },
          itemBuilder: (context, address) => ListTile(
            title: Text(
              address.formattedAddress.getOrCrash,
            ),
          ),
          onSelected: (address) {
            setState(() {
              typeAheadController.text = address.formattedAddress.getOrCrash;
            });
            context
                .read<FormBloc>()
                .add(OnFormInputEvent(widget.initial.copyWith(address)));
          },
        );
      },
    );
  }
}
