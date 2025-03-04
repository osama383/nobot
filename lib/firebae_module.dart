import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

import 'firebase_options.dart';

@module
abstract class InjectableModule {
  // @preResolve
  // Future<FirebaseApp> get initFirebaseApp =>
  //     Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
