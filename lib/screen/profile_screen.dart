import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/login_controller.dart';
import 'package:get/get.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  LoginController _controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(_controller.userProfile["picture"]["data"]["url"]),
            Text(_controller.userProfile["name"],style: TextStyle(fontSize: 28),),
             Text("Email: "+_controller.userProfile["email"])
          ],
        ),
      ),
      
    );
  }
}
