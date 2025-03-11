enum StringCriteria {
  equals,
  contains,
  beginsWith,
  endsWith,
}

enum DateCriteria {
  isAfter,
  isBefore,
}

enum ListCriteria {
  containsAny,
  containsAnyOrEmpty,
}

enum NumberCriteria {
  equals,
  doesNotEqual,
  lessThan,
  lessThanOrEqual,
  greaterThan,
  greaterThanOrEqual,
}

class AppliedCriterion<V extends Object> {
  final Enum name;
  final V target;

  AppliedCriterion({required this.name, required this.target});
}

class Criterion<V extends Object> {}

class SetCriterion<V extends Object> extends Criterion<V> {
  final ListCriteria name;
  final bool Function(Set<V>, Set<V>) test;
  SetCriterion._({required this.name, required this.test});

  factory SetCriterion.named(ListCriteria name) {
    return switch (name) {
      ListCriteria.containsAny => SetCriterion._(
          name: name,
          test: (a, b) => a.intersection(b).isNotEmpty,
        ),
      ListCriteria.containsAnyOrEmpty => SetCriterion._(
          name: name,
          test: (a, b) => a.isEmpty || a.intersection(b).isNotEmpty,
        ),
    };
  }
}

class PrimitivesCriterion<V extends Object> extends Criterion {
  final Enum name;
  final bool Function(V, V) test;
  PrimitivesCriterion._({required this.name, required this.test});

  static PrimitivesCriterion<A> criterion<A extends Object>(Enum e) {
    return switch (e) {
      StringCriteria e => string(e) as PrimitivesCriterion<A>,
      NumberCriteria e => number(e) as PrimitivesCriterion<A>,
      DateCriteria e => date(e) as PrimitivesCriterion<A>,
      Enum() => throw UnimplementedError(),
    };
  }

  static PrimitivesCriterion<String> string(StringCriteria e) {
    return switch (e) {
      StringCriteria.equals => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a.toLowerCase() == b.toLowerCase(),
        ),
      StringCriteria.contains => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a.toLowerCase().contains(b.toLowerCase()),
        ),
      StringCriteria.beginsWith => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a.toLowerCase().startsWith(b.toLowerCase()),
        ),
      StringCriteria.endsWith => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a.toLowerCase().endsWith(b.toLowerCase()),
        ),
    };
  }

  static PrimitivesCriterion<num> number(NumberCriteria e) {
    return switch (e) {
      NumberCriteria.equals => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a == b,
        ),
      NumberCriteria.doesNotEqual => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a != b,
        ),
      NumberCriteria.lessThan => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a < b,
        ),
      NumberCriteria.lessThanOrEqual => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a <= b,
        ),
      NumberCriteria.greaterThan => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a > b,
        ),
      NumberCriteria.greaterThanOrEqual => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a >= b,
        ),
    };
  }

  static PrimitivesCriterion<DateTime> date(DateCriteria e) {
    return switch (e) {
      DateCriteria.isAfter => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a.isAfter(b),
        ),
      DateCriteria.isBefore => PrimitivesCriterion._(
          name: e,
          test: (a, b) => a.isBefore(b),
        ),
    };
  }
}
