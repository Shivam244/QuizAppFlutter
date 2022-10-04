import 'package:myapp/about/about.dart';
import 'package:myapp/login/login.dart';
import 'package:myapp/profile/profile.dart';
import 'package:myapp/topics/topics.dart';

import 'home/home.dart';

var appRoutes = {
  '/': (context) => const Home(),
  '/login': (context) => const Login(),
  '/profile': (context) => const Profile(),
  '/topics': (context) => const Topics(),
  '/about': (context) => const About(),
};
