import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/email/email.dart';

import 'permission.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  final String id;
  final EmailAddress email;
  final Set<Permission> permissions;

  const User({
    required this.id,
    required this.email,
  }) : permissions = const {Permission.assets};
}
