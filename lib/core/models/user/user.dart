import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/firestore_document.dart';

import 'permission.dart';

part 'user.mapper.dart';

@MappableClass()
class User extends FirestoreDocument with UserMappable {
  final EmailAddress email;
  final Set<Permission> permissions;

  const User({
    required super.id,
    required this.email,
  }) : permissions = const {Permission.assets};
}
