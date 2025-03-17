import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:nobot/core/models/assets/assets.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/firestore_document.dart';
import 'package:nobot/core/models/tasks/service_grease/service_grease.dart';
import 'package:nobot/core/models/user/user.dart';

enum Entities { user, customer, waypoint, trip, asset }

@LazySingleton()
class Repository {
  final FirebaseFirestore db;
  Repository(this.db);

  CollectionReference<T> _ref<T extends FirestoreDocument>(
    Entities entity,
  ) {
    final collectionPath = switch (entity) {
      Entities.user => 'users',
      Entities.asset => 'assets',
      Entities.customer => 'customers',
      Entities.trip => 'trips',
      Entities.waypoint => 'waypoints',
    };
    final mapper = switch (entity) {
      Entities.user => UserMapper.fromMap,
      Entities.asset => AssetMapper.fromMap,
      Entities.customer => CustomerMapper.fromMap,
      Entities.trip => TripMapper.fromMap,
      Entities.waypoint => WaypointMapper.fromMap,
    };

    return db.collection(collectionPath).withConverter<T>(
          fromFirestore: (snap, _) =>
              mapper(snap.data()!..addAll({'id': snap.id})) as T,
          toFirestore: (model, _) => model.toMap(),
        );
  }

  Future<void> create<T extends FirestoreDocument>(
    Entities entity,
    T item,
  ) async {
    await _ref(entity).add(item);
  }

  Future<void> seedData(
    List<Customer> customers,
    List<Waypoint> waypoints,
    List<Trip> trips,
  ) async {
    final batch = db.batch();
    for (final customer in customers) {
      batch.set(
        db.collection('customers').doc(customer.id),
        customer.toMap(),
      );
    }
    for (final waypoint in waypoints) {
      batch.set(
        db
            .collection('customers/${waypoint.customer.id}/waypoints')
            .doc(waypoint.id),
        waypoint.toMap(),
      );
    }
    for (final trip in trips) {
      batch.set(
        db.collection('trips').doc(trip.id),
        trip.toMap(),
      );
    }

    batch.commit();
  }

  Future<void> createManyItems<T extends FirestoreDocument>(
    Entities entity,
    List<FirestoreDocument> items,
  ) async {
    final batch = db.batch();
    final collRef = _ref(entity);
    for (final item in items) {
      batch.set(collRef.doc(item.id), item);
    }
    batch.commit();
  }

  Future<void> edit<T extends FirestoreDocument>(
    Entities entity,
    T item,
  ) async {
    await _ref(entity).doc(item.id).update(item.toMap());
  }

  Future<List<T>> getList<T extends FirestoreDocument>(Entities entity) async {
    final stopwatch = Stopwatch()..start();
    final snap = (await _ref<T>(entity).get());
    print('fetching:${stopwatch.elapsed.inMilliseconds}');

    final items = snap.docs.map((e) => e.data()).toList();

    print('mapping:${stopwatch.elapsed.inMilliseconds}');
    stopwatch.stop();
    return items;
  }

  Future<List<Customer>> getCustomers<T extends FirestoreDocument>(
      Entities entity) async {
    // return (await _ref<T>(entity).get()).docs.map((e) => e.data()).toList();

    final stopwatch = Stopwatch()..start();
    final jj = await db.collection('customers').get();
    print('fetching2:${stopwatch.elapsed.inMilliseconds}');
    List<Customer> customers = [];
    final docs = jj.docs;
    print('fetching3:${stopwatch.elapsed.inMilliseconds}');
    await Future.delayed(Duration(milliseconds: 8));
    for (int i = 0; i < docs.length; i++) {
      customers.add(CustomerMapper.fromMap(docs[i].data()));
      if (i % 300 == 0) {
        await Future.delayed(Duration(milliseconds: 8));
      }
    }
    stopwatch.stop();
    print('fetching4:${stopwatch.elapsed.inMilliseconds}');
    return customers;

    // Worker? worker;

    // void deserializeUsingWebWorker(List<Map<String, dynamic>> jsonList) {
    //   worker ??= Worker('worker.js');

    //   worker!.onMessage.listen((event) {
    //     var deserializedObjects = event.data;
    //     print(
    //         'Worker finished deserialization: ${deserializedObjects.length} items');
    //     worker!.terminate(); // Stop worker
    //   });

    //   worker!.postMessage(jsonList);
    // }
  }

  Stream<List<Trip>> listTrips() {
    return db
        .collection('trips')
        .withConverter<Trip>(
          fromFirestore: (snapshot, _) => TripMapper.fromMap(
            snapshot.data()!..addAll({'waypoints': []}),
          ),
          toFirestore: (model, _) => model.toMap(),
        )
        .snapshots()
        .map(
          (e) => e.docs.map((e) => e.data()).toList(),
        );
  }

  Stream<List<T>> list<T extends FirestoreDocument>(Entities entity) {
    return _ref<T>(entity).snapshots().map(
          (e) => e.docs.map((e) => e.data()).toList(),
        );
  }

  // Stream<List<T>> listWhere<T extends FirestoreDocument>(Entities entity) {
  //   return _ref(entity).where(field).snapshots().map(
  //         (e) => e.docs.map((e) => e.data() as T).toList(),
  //       );
  // }
}
