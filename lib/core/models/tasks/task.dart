import 'package:dart_mappable/dart_mappable.dart';

part 'task.mapper.dart';

@MappableEnum()
enum TaskStatus { pending, completed, skipped }

@MappableClass()
class Task with TaskMappable {
  final TaskStatus status;

  Task({required this.status});
}
