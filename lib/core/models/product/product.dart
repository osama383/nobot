import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/product/service_status.dart';

import '../real_number.dart';
import '../utc.dart';

part 'product.mapper.dart';

enum Products { uco, grease }

@MappableClass(discriminatorKey: 'type')
sealed class Product with ProductMappable {
  final ServiceStatus status;
  final UtcOption dueDate;
  final UtcOption lastService;
  final Set<EmailAddress> serviceNotificationEmails;

  Product({
    required this.status,
    required this.dueDate,
    required this.lastService,
    required this.serviceNotificationEmails,
  });

  Product.initialize()
      : status = ServiceStatus.active,
        dueDate = UtcOption.none(),
        lastService = UtcOption.none(),
        serviceNotificationEmails = {};

  bool get isActive => status == ServiceStatus.active;
  Products get type;
}

@MappableClass(discriminatorValue: 'uco')
class Uco extends Product with UcoMappable {
  final RealDouble oilPrice;

  Uco({
    required super.status,
    required super.dueDate,
    required super.lastService,
    required super.serviceNotificationEmails,
    required this.oilPrice,
  });

  Uco.initialize()
      : oilPrice = RealDouble(0),
        super.initialize();

  @override
  Products get type => Products.uco;
}

@MappableClass(discriminatorValue: 'grease')
class Grease extends Product with GreaseMappable {
  Grease({
    required super.status,
    required super.dueDate,
    required super.lastService,
    required super.serviceNotificationEmails,
  });

  Grease.initialize() : super.initialize();

  @override
  Products get type => Products.grease;
}
