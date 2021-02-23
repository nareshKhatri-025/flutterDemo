import 'package:flutter_demo/screen/dashboard_screen.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

class LoginController extends GetxController{

  var isLoggedIn=false.obs;
  var userProfile=Map().obs;
  final  facebookLogin=FacebookLogin();
  Future loginWithFacebook()async{
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
           {final token = result.accessToken.token;
           final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
           final profile = JSON.jsonDecode(graphResponse.body);
           print(profile);
           userProfile(profile);
           isLoggedIn(true);
           break;}

      case FacebookLoginStatus.cancelledByUser:
           {isLoggedIn = false.obs;
           break;}
      case FacebookLoginStatus.error:
           {isLoggedIn = false.obs;
           break;}
    }

  }
}