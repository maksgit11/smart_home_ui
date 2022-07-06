import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home_ui/ui/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart home',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //   primary: Colors.black,
        // ),
      ),
      home: const HomePage(),
    );
  }
}
