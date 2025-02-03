import 'dart:async';

import 'package:get/get.dart';
import 'package:login_systum/resources/Key_Resource.dart';
import 'package:login_systum/views/auth/Login_Screen.dart';
import 'package:login_systum/views/utility/Home_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  splash() {
    Timer(Duration(seconds: 1), () async {
      SharedPreferences account = await SharedPreferences.getInstance();
      (account.containsKey(KeyResource.KEY_IS_LOGIN) == true)
          ? {
              Get.offAll(HomeScreen()),
              print("Is login"),
            }
          : {
              Get.offAll(LoginScreen()),
              print("login"),
            };
    });
  }
}
