import 'package:flutter_demo/controllers/login_controller.dart';
import 'package:flutter_demo/screen/api_call_screen.dart';
import 'package:flutter_demo/screen/login_screen.dart';
import 'package:flutter_demo/screen/prime_number_screen.dart';
import 'package:flutter_demo/screen/profile_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
final List<Widget> _children=[PrimeNumberScreen(),ProfileScreen(),ApiCallScreen()];
  int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: currentIndex==0?Text("Prime Number"):Text("Home"),),
      body:_children[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: _ontap,
        currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.format_list_numbered),label: "Prime Numbers"),
            BottomNavigationBarItem(icon:Icon(Icons.people_rounded),label: "My Account"),
            BottomNavigationBarItem(icon: Icon(Icons.child_friendly_rounded),label: "Api Call"),
          ],
      ) ,
    );
  }

  void _ontap(int value) {
    setState(() {
      currentIndex=value;
    });
  }
}
