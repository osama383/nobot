import 'package:dart_mappable/dart_mappable.dart';

part 'permission.mapper.dart';

@MappableEnum()
enum Permission { trips, customers, reports, sales, assets, settings }
