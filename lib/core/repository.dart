import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:nobot/core/models/assets/assets.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/firestore_document.dart';
import 'package:nobot/core/models/user/user.dart';

enum Entities { user, customer, asset }

@LazySingleton()
class Repository {
  final FirebaseFirestore db;
  Repository(this.db);

  CollectionReference<T> _ref<T extends FirestoreDocument>(Entities entity) {
    final collectionPath = switch (entity) {
      Entities.user => 'users',
      Entities.asset => 'assets',
      Entities.customer => 'customers',
    };
    final mapper = switch (entity) {
      Entities.user => UserMapper.fromMap,
      Entities.asset => AssetMapper.fromMap,
      Entities.customer => CustomerMapper.fromMap,
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

  Future<void> createManyCustomers<T extends FirestoreDocument>(
    Entities entity,
    List<Customer> items,
  ) async {
    final batch = db.batch();
    final collRef = _ref(entity);
    for (final customer in items) {
      batch.set(collRef.doc(), customer);
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
    return (await _ref<T>(entity).get()).docs.map((e) => e.data()).toList();
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
