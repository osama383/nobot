import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/firestore_document.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:nobot/core/models/volume/volume.dart';

import '../task.dart';

part 'service_grease.mapper.dart';

@MappableClass()
class ServiceGrease extends Task with ServiceGreaseMappable {
  Volume capacity;

  ServiceGrease({
    required super.status,
    required this.capacity,
  });
}

@MappableClass()
class Waypoint extends FirestoreDocument with WaypointMappable {
  final String tripId;

  @MappableField(hook: NullToMapHook())
  final Customer customer;

  final List<Task> tasks;

  Waypoint({
    required super.id,
    required this.tripId,
    required this.customer,
    required this.tasks,
  });
}

@MappableEnum()
enum TripStatus { draft, scheduled, inprogress, completed }

@MappableClass(ignoreNull: true)
class Trip extends FirestoreDocument with TripMappable {
  final VString name;
  final TripStatus status;

  @MappableField(hook: NullToMapHook())
  final List<Waypoint> waypoints;

  Trip({
    required super.id,
    required this.name,
    required this.status,
    required this.waypoints,
  });
}

// class NullToMapHook extends MappingHook {
//   const NullToMapHook();

//   @override
//   Object? beforeEncode(Object? value) {
//     return null;
//   }

//   @override
//   Object? beforeDecode(Object? value) {
//     return value;
//   }

//   @override
//   Object? afterEncode(Object? value) {
//     return null;
//   }
// }

class NullToMapHook extends MappingHook {
  const NullToMapHook();

  @override
  Object? beforeEncode(Object? value) {
    return null;
  }

  @override
  Object? beforeDecode(Object? value) {
    return value;
  }

  @override
  Object? afterEncode(Object? value) {
    return null;
  }
}
