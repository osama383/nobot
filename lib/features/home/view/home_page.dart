import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nobot/core/widgets/user_avatar.dart';

import '../../auth/data/auth.dart';

class HomePage extends StatelessWidget {
  final Auth auth;
  const HomePage(this.auth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [UserAvatar(auth)],
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            FirebaseFirestore.instance
                .collection('random')
                .add({'data': 'data'});
          },
          child: Text('creatge random dat'),
        ),
      ),
    );
  }
}
