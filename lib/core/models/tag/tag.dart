import 'package:dart_mappable/dart_mappable.dart';

import '../value_object/value_object.dart';

part 'tag.mapper.dart';

@MappableClass()
class Tag with TagMappable {
  final CaseInsensitiveString name;
  Tag(this.name);
}
