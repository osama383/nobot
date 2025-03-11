part of 'customer_detail_modal.dart';

class _CustomerGeneralTab extends StatelessWidget {
  const _CustomerGeneralTab();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerDetailsBloc, CustomerDetailsState>(
      builder: (context, state) {
        return const SingleChildScrollView(
          child: Column(
            children: [
              _ProductsToggle(),
            ],
          ),
        );
      },
    );
  }
}

class _ProductsToggle extends StatelessWidget {
  const _ProductsToggle();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<CustomerDetailsBloc, CustomerDetailsState>(
      builder: (context, state) {
        return Column(
          children: [
            ...Products.values.map(
              (e) {
                return SwitchListTile(
                  value: state.customer.product(e)?.isActive ?? false,
                  onChanged: (_) {
                    sl<Repository>().edit(
                      Entities.customer,
                      state.customer.activateProduct(e),
                    );
                  },
                  title: Text(labels.products(e)),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
