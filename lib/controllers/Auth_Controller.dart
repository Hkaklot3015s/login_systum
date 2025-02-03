import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_systum/resources/Key_Resource.dart';
import 'package:login_systum/views/auth/Login_Screen.dart';
import 'package:login_systum/views/utility/Home_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConform = TextEditingController();

  RxBool islogin = false.obs;
  final formkey = GlobalKey<FormState>();

  void login_google() {
    print("press : login button google");
  }

  void login_facebook() {
    print("press : login button face book");
  }

  void forgotPassword() async {
    print("press : forgot password link");
    SharedPreferences account = await SharedPreferences.getInstance();
    email.text = account.getString(KeyResource.KEY_EMAIL).toString();
    password.text = account.getString(KeyResource.KEY_PASSWORD).toString();
  }

  void login() async {
    print("press : login Button");
    var _email = email.text.toString();
    var _password = password.text.toString();

    SharedPreferences account = await SharedPreferences.getInstance();
    if (_email == "") {
      Get.snackbar("Error!", "Enter you Email");
      print("Email is MT");
    } else if (_email == account.getString(KeyResource.KEY_EMAIL)) {
      if (_password == account.getString(KeyResource.KEY_PASSWORD)) {
        account.setBool(KeyResource.KEY_IS_LOGIN, true);
        account.setString(KeyResource.KEY_EMAIL, _email.toString());
        account.setString(KeyResource.KEY_PASSWORD, _password.toString());
        Get.offAll(HomeScreen());
        print("login");
      } else {
        Get.snackbar("Error!", "Passwoed is Incorrect");
        print("Password is Incorect");
      }
    } else {
      Get.snackbar("Error!", "Enter your valid Email!");
      print("Rong Email address!");
    }
  }

  void createAccount() async {
    print("press : create Account");
    var _name = "Rocky";
    var _email = "test@gmail.com";
    var _password = "12345";

    SharedPreferences account = await SharedPreferences.getInstance();
    account.setString(KeyResource.KEY_USERNAME, _name);
    account.setString(KeyResource.KEY_EMAIL, _email);
    account.setString(KeyResource.KEY_PASSWORD, _password);
    account.setBool(KeyResource.KEY_IS_LOGIN, false);
    print("create account");
  }

  void logout() async {
    print("press : logout");
    SharedPreferences account = await SharedPreferences.getInstance();
    account.setBool(KeyResource.KEY_IS_LOGIN, false);
    Get.offAll(LoginScreen());
    print("logout");
  }
}
