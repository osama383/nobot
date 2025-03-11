import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import '../../../models/utc.dart';
import '../../../widgets/menu_chip.dart';
import '../../smart_dates.dart';

class SmartDateInput extends StatefulWidget {
  final SmartDates initialRange;
  final void Function(DateTimeRange dateRange) onDateRangeChanged;

  const SmartDateInput({
    super.key,
    required this.initialRange,
    required this.onDateRangeChanged,
  });

  @override
  State<SmartDateInput> createState() => _SmartDateInputState();
}

class _SmartDateInputState extends State<SmartDateInput> {
  late DateTimeRange dateRange;
  SmartDates? smartDate;

  bool selectingCustomDateRange = false;

  @override
  void initState() {
    smartDate = widget.initialRange;
    dateRange = toDateRange(smartDate!, Utc.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return MenuChip(
      title: smartDate != null
          ? labels.smartDateRanges(smartDate!)
          : '${Utc(dateRange.start).toNumericMonthDayYear} - ${Utc(dateRange.end).toNumericMonthDayYear}',
      menuChildren: [
        ...SmartDates.values.map((e) {
          return MenuItemButton(
            child: Text(labels.smartDateRanges(e)),
            onPressed: () {
              setState(() {
                smartDate = e;
                dateRange = toDateRange(smartDate!, Utc.now());
              });
              widget.onDateRangeChanged(dateRange);
            },
          );
        }),
        MenuItemButton(
          child: const Text('Custom'),
          onPressed: () async {
            final result = await showDateRangePicker(
              locale: context.locale,
              context: context,
              firstDate: DateTime(2016),
              lastDate: Utc.now().ctz,
              initialDateRange: dateRange,
              builder: (context, child) {
                return context.useMobileLayout
                    ? Column(
                        children: [
                          child ?? const SizedBox(),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                              maxHeight: context.maxHeight * 0.8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: child,
                          ),
                        ],
                      );
              },
            );

            if (result is DateTimeRange) {
              setState(() {
                smartDate = null;
                dateRange = result;
                dateRange = DateTimeRange(
                  start: Utc(result.start).copyToStartOfDay().utc,
                  end: Utc(result.end).copyToEndOfDay().utc,
                );
              });

              widget.onDateRangeChanged(dateRange);
            }
          },
        ),
      ],
    );
  }
}
