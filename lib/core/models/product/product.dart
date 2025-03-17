import 'package:dart_mappable/dart_mappable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/product/service_status.dart';

import '../customer/customer.dart';
import '../utc.dart';
import '../volume/volume.dart';

part 'product.mapper.dart';

enum Products { uco, grease }

@MappableClass(discriminatorKey: 'type')
sealed class Product with ProductMappable {
  final ServiceStatus status;
  final UtcOption dueDate;
  final UtcOption lastService;
  final Set<EmailAddress> serviceNotificationEmails;
  final LatLng location;

  Product({
    required this.status,
    required this.dueDate,
    required this.lastService,
    required this.serviceNotificationEmails,
    required this.location,
  });

  Product.initialize(Customer customer)
      : status = ServiceStatus.active,
        dueDate = UtcOption.none(),
        lastService = UtcOption.none(),
        location = customer.address.location,
        serviceNotificationEmails = {};

  bool get isActive => status == ServiceStatus.active;
  Products get type;
}

@MappableClass(discriminatorValue: 'uco')
class Uco extends Product with UcoMappable {
  final int oilPrice;

  Uco({
    required super.status,
    required super.dueDate,
    required super.lastService,
    required super.serviceNotificationEmails,
    required super.location,
    required this.oilPrice,
  });

  Uco.initialize(super.customer)
      : oilPrice = 0,
        super.initialize();

  @override
  Products get type => Products.uco;
}

@MappableClass(discriminatorValue: 'grease')
class Grease extends Product with GreaseMappable {
  final Volume capacity;
  Grease({
    required super.status,
    required super.dueDate,
    required super.lastService,
    required super.location,
    required super.serviceNotificationEmails,
    required this.capacity,
  });

  Grease.initialize(super.customer)
      : capacity = Volume.empty(),
        super.initialize();

  @override
  Products get type => Products.grease;
}
