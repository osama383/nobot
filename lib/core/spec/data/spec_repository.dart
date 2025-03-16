import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../page_spec.dart';

@Injectable()
class SpecRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore db;

  SpecRepository(this.auth, this.db);

  init() {
    auth.userChanges().listen((user) {
      if (auth.currentUser == null) {
        _customersPageSpec = null;
        _tripsPageSpec = null;
        _reportsPageSpec = null;
        return;
      }
      final userId = auth.currentUser!.uid;
      db
          .collection('preferences/$userId/pageSpecs')
          .withConverter<PageSpec>(
            fromFirestore: (snap, _) => PageSpec.fromJson(snap.data()!),
            toFirestore: (spec, _) => spec.toJson(),
          )
          .snapshots()
          .map((snapshots) => snapshots.docs.map((e) => e.data()).toList())
          .listen((specs) {
        _customersPageSpec = specs.whereType<CustomersPageSpec>().lastOrNull;
        _tripsPageSpec = specs.whereType<TripsPageSpec>().lastOrNull;
        _reportsPageSpec = specs.whereType<ReportsPageSpec>().lastOrNull;
      });
    });
  }

  CustomersPageSpec? _customersPageSpec;
  Option<CustomersPageSpec> get customersPageSpec =>
      optionOf(_customersPageSpec);

  TripsPageSpec? _tripsPageSpec;
  Option<TripsPageSpec> get tripsPageSpec => optionOf(_tripsPageSpec);

  ReportsPageSpec? _reportsPageSpec;
  Option<ReportsPageSpec> get reportsPageSpec {
    return optionOf(_reportsPageSpec);
  }

  Future<void> saveSpec(PageSpec spec) async {
    final userId = auth.currentUser!.uid;

    await db
        .collection('preferences')
        .doc(userId)
        .collection('pageSpecs')
        .withConverter<PageSpec>(
          fromFirestore: (snap, _) => PageSpec.fromJson(snap.data()!),
          toFirestore: (spec, _) => spec.toJson(),
        )
        .doc(
          switch (spec) {
            CustomersPageSpec() => 'customers - default',
            TripsPageSpec() => 'trips - default',
            ReportsPageSpec() => 'reports - default',
          },
        )
        .set(spec);
  }
}
