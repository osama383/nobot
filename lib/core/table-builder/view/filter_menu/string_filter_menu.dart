part of '../table_builder/table_builder.dart';

class StringFilterMenu<T extends Object> extends StatefulWidget {
  final PrimitiveFilter<T, String> filter;
  const StringFilterMenu(this.filter, {super.key});

  @override
  State<StringFilterMenu<T>> createState() => _StringFilterMenuState<T>();
}

class _StringFilterMenuState<T extends Object>
    extends State<StringFilterMenu<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    final appliedFilters = widget.filter.appliedCriteria;
    controller.text = appliedFilters.isEmpty ? '' : appliedFilters.first.target;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return FilterMenu(
      filter: widget.filter,
      buildCriteria: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextFormField(
            decoration: InputDecoration(labelText: labels.search),
            controller: controller,
            autofocus: true,
            onChanged: (val) {
              if (val.isEmpty) {
                context.read<TableBuilderBloc<T>>().add(
                      TableBuilderEvent<T, String>.onFilterCleared(
                        widget.filter.columnId,
                      ),
                    );
              } else {
                context.read<TableBuilderBloc<T>>().add(
                      TableBuilderEvent<T, String>.onSetFilterPressed(
                          widget.filter.columnId, [
                        AppliedCriterion(
                          name: StringCriteria.contains,
                          target: val,
                        ),
                      ]),
                    );
              }
            },
          ),
        );
      },
    );
  }
}
