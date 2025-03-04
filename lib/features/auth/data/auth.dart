import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';

import '../../../core/models/email/email.dart';
import '../../../core/models/failure/failure.dart';
import '../../../core/models/password/password.dart';
import '../../../core/models/user/user.dart';

@singleton
class Auth {
  User? _currentUser;
  User? get currentUser => _currentUser;

  final StreamController<User?> _currentUserStreamController =
      StreamController.broadcast();
  late final Stream<User?> currentUserStream;

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore db;
  Auth(this.firebaseAuth, this.db) {
    currentUserStream = _currentUserStreamController.stream.asBroadcastStream();
    currentUserStream.listen((event) {
      _currentUser = event;
    });
  }

  Future<void> started() async {
    if (firebaseAuth.currentUser == null) {
      _currentUser = null;
      return;
    }

    db
        .collection('users')
        .withConverter<User>(
          fromFirestore: (snap, _) => User.fromJson(snap.data()!),
          toFirestore: (user, _) => user.toJson(),
        )
        .doc(firebaseAuth.currentUser!.uid)
        .snapshots()
        .listen((e) {
      _currentUser = e.data();
    });
  }

  Future<Either<Failure, Unit>> signUpWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email.getOrCrash,
        password: password.getOrCrash,
      );
      // Future.delayed(Duration(milliseconds: 300));

      // await db.collection('users').doc(currentUser!.id).set(User(
      //       id: currentUser!.id,
      //       email: email.getOrCrash,
      //       userName: '',
      //     ).toJson());

      // Future.delayed(Duration(milliseconds: 300));
      // db
      //     .collection('users')
      //     .doc(currentUser!.id)
      //     .withConverter<User>(
      //       fromFirestore: (snap, _) => User.fromJson(snap.data()!),
      //       toFirestore: (user, _) => user.toJson(),
      //     )
      //     .snapshots()
      //     .listen((e) {
      //   print(e);
      //   _currentUserStreamController.sink.add(e.data());
      // });
      _currentUserStreamController.sink
          .add(User(id: '', userName: 'some name', email: ''));
      return right(unit);
    } on FirebaseAuthException catch (_) {
      _currentUserStreamController.sink.add(null);
      return left(SigninFailure());
    }
  }

  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email.getOrCrash,
        password: password.getOrCrash,
      );

      // db
      //     .collection('users')
      //     .withConverter<User>(
      //       fromFirestore: (snap, _) => User.fromJson(snap.data()!),
      //       toFirestore: (user, _) => user.toJson(),
      //     )
      //     .doc(firebaseAuth.currentUser!.uid)
      //     .snapshots()
      //     .listen((e) {
      //   _currentUserStreamController.sink.add(e.data());
      // });
      _currentUserStreamController.sink
          .add(User(id: '', userName: '', email: 'some email'));
      return right(unit);
    } on FirebaseAuthException catch (_) {
      _currentUserStreamController.sink.add(null);
      return left(SigninFailure());
    }
  }

  void userUpdated(User user) {
    assert(user.id == _currentUser!.id);
    _currentUserStreamController.sink.add(user);
  }

  void logout() {
    _currentUserStreamController.sink.add(null);
    firebaseAuth.signOut();
  }
}
