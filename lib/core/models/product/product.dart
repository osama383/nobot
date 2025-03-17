import 'package:dart_mappable/dart_mappable.dart';
import 'package:faker/faker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/product/service_status.dart';

import '../customer/customer.dart';
import '../utc.dart';
import '../volume/volume.dart';
import 'due_and_scheduled_combo.dart';

part 'product.mapper.dart';

enum Products { uco, grease }

@MappableClass(discriminatorKey: 'runtimeType')
sealed class Product with ProductMappable {
  final ServiceStatus status;
  final UtcOption dueDateOption;
  final UtcOption lastServiceOption;
  final UtcOption scheduledDateOption;
  final Set<EmailAddress> serviceNotificationEmails;
  final LatLng location;

  Product({
    required this.status,
    required this.dueDateOption,
    required this.lastServiceOption,
    required this.scheduledDateOption,
    required this.serviceNotificationEmails,
    required this.location,
  });

  Product.initialize(Customer customer)
      : status = ServiceStatus.active,
        dueDateOption = UtcOption.some(
          Utc(faker.date.dateTime(minYear: 2023, maxYear: 2026)),
        ),
        lastServiceOption = UtcOption.some(
          Utc(faker.date.dateTime(minYear: 2023, maxYear: 2025)),
        ),
        scheduledDateOption = faker.randomGenerator.boolean()
            ? UtcOption.some(
                Utc(faker.date.dateTime(minYear: 2023, maxYear: 2025)),
              )
            : UtcOption.none(),
        location = customer.address.location,
        serviceNotificationEmails = {};

  bool get isActive => status == ServiceStatus.active;
  Products get type;

  DueAndNextCombo needForService() {
    if (status == ServiceStatus.inactive) {
      return DueAndNextCombo.inactive;
    }

    return dueDateOption.fold(
      () => DueAndNextCombo.noDueDate,
      (a) => a.isBefore(Utc.now())
          ? DueAndNextCombo.overdue
          : a.isBefore(Utc.now().add(const Duration(days: 3)))
              ? DueAndNextCombo.dueIn3
              : a.isBefore(Utc.now().add(const Duration(days: 7)))
                  ? DueAndNextCombo.dueIn7
                  : DueAndNextCombo.dueAfter7,
    );
  }

  DueAndNextCombo needForScheduling() {
    if (status == ServiceStatus.inactive) {
      return DueAndNextCombo.inactive;
    }

    return scheduledDateOption.fold(
      () => needForService(),
      (_) => DueAndNextCombo.scheduled,
    );
  }
}

@MappableClass(discriminatorValue: 'uco')
class Uco extends Product with UcoMappable {
  final int oilPrice;

  Uco({
    required super.status,
    required super.dueDateOption,
    required super.lastServiceOption,
    required super.scheduledDateOption,
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
    required super.dueDateOption,
    required super.lastServiceOption,
    required super.scheduledDateOption,
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
