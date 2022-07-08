import 'package:flutter/material.dart';
import 'package:smart_home_ui/ui/device_page.dart';
import 'package:smart_home_ui/ui/home_page/home_page.dart';
import 'package:smart_home_ui/ui/my_page.dart';
import 'package:smart_home_ui/ui/settings_page.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    Key? key,
    required this.current,
  }) : super(key: key);

  final int current;

  PageRouteBuilder _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        currentIndex: current,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Device',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Page',
          ),
        ],
        onTap: (index) {
          if (index == current) return;
          if (index == 0) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const HomePage()),
              (route) => false,
            );
          } else if (index == 1) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const DevicesPage()),
              (route) => false,
            );
          } else if (index == 2) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const SettingsPage()),
              (route) => false,
            );
          } else if (index == 3) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const MyPage()),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}
