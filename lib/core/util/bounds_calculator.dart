// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import '../models/customer/customer.dart';
// import '../models/trip/trip.dart';

// class BoundsCalculator {
//   LatLngBounds bounds(Trip trip, List<CustomerModel> customers) {
//     List<LatLng> positions = [];

//     positions.add(trip.depot.latLng);
//     for (final waypoint in trip.waypoints) {
//       positions.add(waypoint.customer.productLocation(trip.product).toLatLng());
//     }
//     for (final customer in customers) {
//       positions.add(customer.productLocation(trip.product).toLatLng());
//     }

//     final southwestLat = positions.map((p) => p.latitude).reduce(
//           (value, element) => value < element ? value : element,
//         ); // smallest
//     final southwestLon = positions
//         .map((p) => p.longitude)
//         .reduce((value, element) => value < element ? value : element);
//     final northeastLat = positions.map((p) => p.latitude).reduce(
//           (value, element) => value > element ? value : element,
//         ); // biggest
//     final northeastLon = positions
//         .map((p) => p.longitude)
//         .reduce((value, element) => value > element ? value : element);

//     return LatLngBounds(
//       southwest: LatLng(southwestLat, southwestLon),
//       northeast: LatLng(northeastLat, northeastLon),
//     );
//   }
// }
