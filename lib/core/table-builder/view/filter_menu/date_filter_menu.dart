part of '../table_builder/table_builder.dart';

class DateFilterMenu<T extends Object> extends StatefulWidget {
  final PrimitiveFilter<T, Utc> filter;
  const DateFilterMenu(this.filter, {super.key});

  @override
  State<DateFilterMenu<T>> createState() => _DateFilterMenuState<T>();
}

class _DateFilterMenuState<T extends Object> extends State<DateFilterMenu<T>> {
  Utc? startDate, endDate;

  bool selectingStartDate = false;
  bool selectingEndDate = false;

  final startDateTextController = TextEditingController();
  final endDateTextController = TextEditingController();

  @override
  void initState() {
    if (widget.filter.appliedCriteria
        .any((element) => element.name == DateCriteria.isAfter)) {
      startDate = widget.filter.appliedCriteria
          .firstWhere((element) => element.name == DateCriteria.isAfter)
          .target;
      startDateTextController.text = startDate!.toNumericMonthDayYear;
    }
    if (widget.filter.appliedCriteria
        .any((element) => element.name == DateCriteria.isBefore)) {
      endDate = widget.filter.appliedCriteria
          .firstWhere(
            (element) => element.name == DateCriteria.isBefore,
          )
          .target;
      endDateTextController.text = endDate!.toNumericMonthDayYear;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;

    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return selectingStartDate
            ? SizedBox(
                width: 440,
                height: 400,
                child: SfDateRangePicker(
                  backgroundColor: Colors.transparent,
                  initialSelectedDate: startDate?.ctz,
                  showNavigationArrow: true,
                  onSelectionChanged: (args) {
                    startDate = Utc(args.value as DateTime);
                    selectingStartDate = false;
                    startDateTextController.text =
                        startDate?.toNumericMonthDayYear ?? '';
                    onSubmit();
                  },
                ),
              )
            : selectingEndDate
                ? SizedBox(
                    width: 440,
                    height: 400,
                    child: SfDateRangePicker(
                      backgroundColor: Colors.transparent,
                      initialSelectedDate: endDate?.ctz,
                      showNavigationArrow: true,
                      onSelectionChanged: (args) {
                        endDate = Utc(args.value as DateTime);
                        selectingEndDate = false;
                        endDateTextController.text =
                            endDate?.toNumericMonthDayYear ?? '';
                        onSubmit();
                      },
                    ),
                  )
                : FilterMenu(
                    filter: widget.filter,
                    buildCriteria: (context) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: labels.after,
                                  suffixIcon: startDate == null
                                      ? null
                                      : IconButton(
                                          onPressed: () {
                                            setState(() {
                                              startDate = null;
                                              startDateTextController.text = '';
                                            });
                                            onClearCriteria(
                                              DateCriteria.isAfter,
                                            );
                                          },
                                          icon: const Icon(Icons.close),
                                        ),
                                ),
                                controller: startDateTextController,
                                showCursor: false,
                                readOnly: true,
                                keyboardType: TextInputType.none,
                                onTap: () => setState(
                                  () => selectingStartDate = true,
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: labels.before,
                                  suffixIcon: endDate == null
                                      ? null
                                      : IconButton(
                                          onPressed: () {
                                            setState(() {
                                              endDate = null;
                                              endDateTextController.text = '';
                                            });
                                            onClearCriteria(
                                              DateCriteria.isBefore,
                                            );
                                          },
                                          icon: const Icon(Icons.close),
                                        ),
                                ),
                                controller: endDateTextController,
                                showCursor: false,
                                readOnly: true,
                                keyboardType: TextInputType.none,
                                onTap: () => setState(
                                  () => selectingEndDate = true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
      },
    );
  }

  onClearCriteria(DateCriteria criterion) {
    final criteria = List<AppliedCriterion<DateTime>>.from(
      widget.filter.appliedCriteria,
    );
    criteria.removeWhere((e) => e.name == criterion);

    if (criteria.isEmpty) {
      context.read<TableBuilderBloc<T>>().add(
            TableBuilderEvent<T, DateTime>.onFilterCleared(
              widget.filter.columnId,
            ),
          );
    } else {
      context.read<TableBuilderBloc<T>>().add(
            TableBuilderEvent<T, DateTime>.onSetFilterPressed(
              widget.filter.columnId,
              criteria,
            ),
          );
    }
  }

  onSubmit() {
    if (startDate == null && endDate == null) return;
    final appliedCriteria = <AppliedCriterion<Utc>>[];
    if (startDate != null) {
      appliedCriteria.add(
        AppliedCriterion(
          name: DateCriteria.isAfter,
          target: startDate!,
        ),
      );
    }
    if (endDate != null) {
      appliedCriteria.add(
        AppliedCriterion(
          name: DateCriteria.isBefore,
          target: endDate!,
        ),
      );
    }
    context.read<TableBuilderBloc<T>>().add(
          TableBuilderEvent<T, Utc>.onSetFilterPressed(
            widget.filter.columnId,
            appliedCriteria,
          ),
        );
  }
}
