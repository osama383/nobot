import 'package:dartz/dartz.dart';

import 'filter.dart';
import 'sort/sort.dart';

List<T> filteredAndSorted<T extends Object>(
  List<T> itemsToFilter,
  List<Filter<T, dynamic>> filters,
  Option<Sort<T, dynamic>> sortOption,
) {
  final filteredItems = filtered(itemsToFilter, filters);

  if (filteredItems.length < 2) return filteredItems;

  return sortOption.fold(
    () => filteredItems,
    (sort) => sorted(filteredItems, sort),
  );
}

List<T> filtered<T extends Object>(
  List<T> itemsToFilter,
  List<Filter<T, dynamic>> filters,
) {
  if (itemsToFilter.isEmpty) return itemsToFilter;

  List<T> filteredItems = [...itemsToFilter];
  final activeFilters = filters.where((e) => e.appliedCriteria.isNotEmpty);
  if (activeFilters.isNotEmpty) {
    for (final filter in activeFilters) {
      filteredItems = filteredItems.where((item) => filter.test(item)).toList();
    }
  }

  return filteredItems;
}

List<T> sorted<T extends Object>(
  List<T> itemsToSort,
  Sort<T, dynamic> sort,
) {
  if (itemsToSort.length < 2) return itemsToSort;
  var result = List<T>.from(itemsToSort);
  if (sort.value(result.first).runtimeType == String) {
    result.sort(
      (a, b) {
        var aValue = sort.value(a).toString().toLowerCase();
        var bValue = sort.value(b).toString().toLowerCase();
        return aValue.compareTo(bValue);
      },
    );
  } else {
    result.sort(
      (a, b) => sort.value(a).compareTo(sort.value(b)),
    );
  }
  return sort.ascending ? result : result.reversed.toList();
}
