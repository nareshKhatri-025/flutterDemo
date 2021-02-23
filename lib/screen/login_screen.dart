import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/login_controller.dart';
import 'package:flutter_demo/screen/dashboard_screen.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController _loginController=Get.put(LoginController());
  final facebookLogin = FacebookLogin();

  @override
  Widget build(BuildContext context) {
    return _loginController.isLoggedIn.value==true?Get.to(DashBoardScreen()): Scaffold(
      appBar: AppBar(
        title: Text("Login"),

      ),
      body: Center(
        child: FlatButton(
          onPressed: (){_loginController.loginWithFacebook().whenComplete(() => Get.to(DashBoardScreen())); },
          child: Text("Login with Facebook",style: TextStyle(color:Colors.white),),
          color: Colors.blue,
        ),
      ),
    );
  }
}
