import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/login/login.dart';
import 'package:myapp/services/auth_service.dart';
import 'package:myapp/topics/topics.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthService().userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: const Text('loading'));
          } else if (snapshot.hasError) {
            return Center(child: const Text('Error'));
          } else if (snapshot.hasData) {
            return const Topics();
          } else {
            return const Login();
          }
        });
  }
}
