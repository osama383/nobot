part of '../table_builder/table_builder.dart';

class MultiselectFilterMenu<T extends Object, V extends Object>
    extends StatefulWidget {
  final MultiselectFilter<T, V> filter;
  const MultiselectFilterMenu(this.filter, {super.key});

  @override
  State<MultiselectFilterMenu<T, V>> createState() =>
      _MultiselectFilterMenuState<T, V>();
}

class _MultiselectFilterMenuState<T extends Object, V extends Object>
    extends State<MultiselectFilterMenu<T, V>> {
  bool get emptyOptionSelected {
    return widget.filter.appliedCriteria.isEmpty ||
        widget.filter.appliedCriteria
            .map((e) => e.name)
            .contains(ListCriteria.containsAnyOrEmpty);
  }

  Set<V> get selectedOptions {
    return widget.filter.appliedCriteria.isEmpty
        ? widget.filter.options
        : widget.filter.appliedCriteria.first.target;
  }

  Set<V> get options => widget.filter.options;

  bool? get allSelected {
    if (widget.filter.appliedCriteria.isEmpty) {
      return true;
    }
    final target = widget.filter.appliedCriteria.first.target;
    if (widget.filter.appliedCriteria.first.name ==
        ListCriteria.containsAnyOrEmpty) {
      return null;
    }
    if (target.isEmpty) {
      return false;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return FilterMenu(
      filter: widget.filter,
      buildCriteria: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Theme(
            data: Theme.of(context).copyWith(
              checkboxTheme: const CheckboxThemeData(splashRadius: 0),
            ),
            child: Column(
              children: [
                CheckboxMenuButton(
                  closeOnActivate: false,
                  value: allSelected,
                  tristate: true,
                  child: Text(labels.selectAll),
                  onChanged: (val) {
                    if (val ?? false) {
                      onClearFilter();
                    } else {
                      onSubmit({}, !emptyOptionSelected);
                    }
                  },
                ),
                if (widget.filter.includeEmptyOption)
                  CheckboxMenuButton(
                    closeOnActivate: false,
                    value: emptyOptionSelected,
                    child: Text(widget.filter.emptyOptionName),
                    onChanged: (value) {
                      if (setEquals(selectedOptions, options) && value!) {
                        onClearFilter();
                      } else {
                        onSubmit(selectedOptions, value!);
                      }
                    },
                  ),
                ...widget.filter.options.map(
                  (option) => Theme(
                    data: Theme.of(context).copyWith(
                      checkboxTheme: CheckboxThemeData(
                        checkColor: WidgetStatePropertyAll(
                          widget.filter.optionColor != null
                              ? widget.filter.optionColor!.call(option) != null
                                  ? Colors.white
                                  : const Color(0xFF000000)
                              : Colors.white,
                        ),
                        fillColor: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            if (widget.filter.optionColor != null) {
                              return widget.filter.optionColor!.call(option) ??
                                  Colors.white;
                            }
                            return null;
                          }
                          return null;
                        }),
                        side: widget.filter.optionColor == null
                            ? null
                            : BorderSide(
                                color:
                                    widget.filter.optionColor?.call(option) ??
                                        const Color(0xFF000000),
                                width: 3,
                              ),
                        shape: widget.filter.optionColor == null
                            ? null
                            : RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                                side: BorderSide(
                                  color:
                                      widget.filter.optionColor?.call(option) ??
                                          const Color(0xFF000000),
                                  width: 3,
                                ),
                              ),
                      ),
                    ),
                    child: CheckboxMenuButton(
                      closeOnActivate: false,
                      value: selectedOptions.contains(option),
                      onChanged: (value) {
                        final target = Set<V>.from(selectedOptions);
                        if (target.contains(option)) {
                          target.remove(option);
                        } else {
                          target.add(option);
                        }
                        if (setEquals(target, options) && emptyOptionSelected) {
                          onClearFilter();
                        } else {
                          onSubmit(target, emptyOptionSelected);
                        }
                      },
                      child: Text(widget.filter.optionName(option)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  onClearFilter() {
    context.read<TableBuilderBloc<T>>().add(
          TableBuilderEvent<T, Set<V>>.onFilterCleared(
            widget.filter.columnId,
          ),
        );
  }

  onSubmit(Set<V> target, bool emptyOptionSelected) {
    context.read<TableBuilderBloc<T>>().add(
          TableBuilderEvent<T, Set<V>>.onSetFilterPressed(
            widget.filter.columnId,
            [
              AppliedCriterion(
                name: emptyOptionSelected
                    ? ListCriteria.containsAnyOrEmpty
                    : ListCriteria.containsAny,
                target: target,
              ),
            ],
          ),
        );
  }
}
