part of '../table_builder/table_builder.dart';

class NumberFilterMenu<T extends Object> extends StatefulWidget {
  final PrimitiveFilter<T, num> filter;
  const NumberFilterMenu(this.filter, {super.key});

  @override
  State<NumberFilterMenu<T>> createState() => _NumberFilterMenuState<T>();
}

class _NumberFilterMenuState<T extends Object>
    extends State<NumberFilterMenu<T>> {
  num? min, max;
  final minTextController = TextEditingController();
  final maxTextController = TextEditingController();

  @override
  void initState() {
    if (widget.filter.appliedCriteria.any(
      (element) => element.name == NumberCriteria.greaterThanOrEqual,
    )) {
      min = widget.filter.appliedCriteria
          .firstWhere(
            (element) => element.name == NumberCriteria.greaterThanOrEqual,
          )
          .target;
    }
    if (widget.filter.appliedCriteria
        .any((element) => element.name == NumberCriteria.lessThanOrEqual)) {
      max = widget.filter.appliedCriteria
          .firstWhere(
            (element) => element.name == NumberCriteria.lessThanOrEqual,
          )
          .target;
    }
    minTextController.text = min?.toString() ?? '';
    maxTextController.text = max?.toString() ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return FilterMenu(
      filter: widget.filter,
      buildCriteria: (BuildContext context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: labels.minimum),
                    controller: minTextController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (_) {
                      min = int.tryParse(minTextController.text);
                      onSubmit();
                    },
                    onFieldSubmitted: (_) => onSubmit(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: labels.maximum),
                    controller: maxTextController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (_) {
                      max = int.tryParse(maxTextController.text);
                      onSubmit();
                    },
                    onFieldSubmitted: (_) {
                      onSubmit();
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  onSubmit() {
    if (min == null && max == null) {
      context.read<TableBuilderBloc<T>>().add(
            TableBuilderEvent<T, num>.onFilterCleared(
              widget.filter.columnId,
            ),
          );
    }
    final appliedCriteria = <AppliedCriterion<num>>[];
    if (min != null) {
      appliedCriteria.add(
        AppliedCriterion(
          name: NumberCriteria.greaterThanOrEqual,
          target: min!,
        ),
      );
    }
    if (max != null) {
      appliedCriteria.add(
        AppliedCriterion(
          name: NumberCriteria.lessThanOrEqual,
          target: max!,
        ),
      );
    }
    context.read<TableBuilderBloc<T>>().add(
          TableBuilderEvent<T, num>.onSetFilterPressed(
            widget.filter.columnId,
            appliedCriteria,
          ),
        );
  }
}
