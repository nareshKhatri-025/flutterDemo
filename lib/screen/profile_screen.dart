import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/login_controller.dart';
import 'package:get/get.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  LoginController _controller=Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Image.network(_controller.userProfile["picture"]["data"]["url"], height: 50.0, width: 50.0,),
            Text(_controller.userProfile["name"]),
            Text("Email: "+_controller.userProfile["email"])
          ],
        ),
      ),
      
    );
  }
}
