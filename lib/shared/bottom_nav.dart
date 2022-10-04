import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.graduationCap,
                size: 20,
              ),
              label: 'Topics'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bolt,
                size: 20,
              ),
              label: 'About'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userAstronaut,
                size: 20,
              ),
              label: 'Profile'),
        ],
        fixedColor: Colors.blueGrey,
        onTap: (int idx) {
          switch (idx) {
            case 0:
              break;
            case 1:
              Navigator.pushNamed(context, '/about');
              break;
            case 2:
              Navigator.pushNamed(context, '/profile');
          }
        });
  }
}
