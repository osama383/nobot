part of 'customers_page.dart';

class _TableActions extends StatelessWidget {
  const _TableActions();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<Customer>, TableBuilderState<Customer>>(
      builder: (context, state) {
        return context.useMobileLayout
            ? const Row(
                children: [
                  Expanded(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        _DepotSelector(),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _FoundCount(),
                            SizedBox(width: 8),
                            _TableMenuAnchor(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : const Row(
                children: [
                  _DepotSelector(),
                  ShowHideGroups<Customer>(),
                  SizedBox(width: 16),
                  ActiveFilters<Customer>(),
                  Spacer(),
                  _FoundCount(),
                  SizedBox(width: 8),
                  _TableMenuAnchor(),
                ],
              );
      },
    );
  }
}

class _DepotSelector extends StatelessWidget {
  const _DepotSelector();

  Widget menuItem(
    BuildContext context,
    dartz.Option<Depot> depotOption,
  ) {
    final labels = context.localizationLabels;
    return PointerInterceptor(
      child: MenuItemButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 12,
            ),
          ),
        ),
        child: Text(
          depotOption.fold(
            () => labels.allDepots,
            (a) => a.name.getOrCrash,
          ),
        ),
        onPressed: () {
          context
              .read<CustomersBloc>()
              .add(CustomersEvent.onDepotSelected(depotOption));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<CustomersBloc, CustomersState>(
      builder: (context, state) {
        return state.depots.length < 2
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(right: 16),
                child: state.currentUserDepotAccessPolicy
                        is DepotAccessRestricted
                    ? Chip(
                        side: BorderSide.none,
                        padding: const EdgeInsets.symmetric(
                          vertical: 9,
                          horizontal: 12,
                        ),
                        label: Text(
                          state.selectedDepotOption.fold(
                            () => labels.allDepots,
                            (a) => a.name.getOrCrash,
                          ),
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        backgroundColor: context.colorScheme.primaryContainer,
                      )
                    : MenuChip(
                        title: state.selectedDepotOption.fold(
                          () => labels.allDepots,
                          (a) => a.name.getOrCrash,
                        ),
                        disabled: state.currentUserDepotAccessPolicy
                            is DepotAccessRestricted,
                        menuChildren: state.currentUserDepotAccessPolicy
                                is DepotAccessRestricted
                            ? []
                            : [
                                menuItem(context, dartz.none()),
                                for (final depot in state.depots)
                                  menuItem(context, dartz.some(depot)),
                              ],
                      ),
              );
      },
    );
  }
}

class _TableMenuAnchor extends StatelessWidget {
  const _TableMenuAnchor();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return MenuMore(
      menuChildren: [
        MenuItemButton(
          onPressed: () {
            context.read<TableBuilderBloc<Customer>>().add(
                  TableBuilderEvent.onExport(labels.customers),
                );
          },
          child: Text(labels.download),
        ),
      ],
    );
  }
}

class _FoundCount extends StatelessWidget {
  const _FoundCount();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<TableBuilderBloc<Customer>, TableBuilderState<Customer>>(
      builder: (context, state) {
        return Text(
          '${state.filteredItems.length} / ${labels.getFoundCount(state.items.length)}',
        );
      },
    );
  }
}
