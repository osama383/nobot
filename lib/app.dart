import 'package:flutter/material.dart';
import 'package:nobot/theme.dart';

import 'core/routes/routes.dart';

class Nobot extends StatelessWidget {
  const Nobot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: nobotTheme,
      themeMode: ThemeMode.light,
      title: 'Nobot',
      locale: View.of(context).platformDispatcher.locale,
    );
  }
}
