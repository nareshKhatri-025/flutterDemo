import 'package:flutter/material.dart';
import 'package:flutter_demo/screen/dashboard_screen.dart';
import 'package:flutter_demo/screen/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
   home: LoginScreen(),
    );
  }
}
