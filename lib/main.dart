import 'package:dart_mappable/dart_mappable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nobot/core/models/value_object/mappers.dart';
import 'package:nobot/injection.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app.dart';
import 'core/routes/routes.dart';
import 'features/auth/data/auth.dart';
import 'firebase_options.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  configureDependencies();
  sl<FirebaseAuth>().setPersistence(Persistence.LOCAL);
  //ensure URL changes in the address bar when using push / pushNamed
  // more info here: https://docs.google.com/document/d/1VCuB85D5kYxPR3qYOjVmw8boAGKb7k62heFyfFHTOvw/edit
  GoRouter.optionURLReflectsImperativeAPIs = true;
  await sl<Auth>().started();
  sl<Auth>().currentUserStream.distinct().listen((event) {
    goRouter.refresh();
  });

  MapperContainer.globals.use(const VStringMapper());
  MapperContainer.globals.use(const EmailMapper());
  MapperContainer.globals.use(const LatLngMapper());

  runApp(const Nobot());
}
