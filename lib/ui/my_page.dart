import 'package:flutter/material.dart';
import 'package:smart_home_ui/ui/widgets/app_nav_bar.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppNavBar(current: 3),
    );
  }
}
