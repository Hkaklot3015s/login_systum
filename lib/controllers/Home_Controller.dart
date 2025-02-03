import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_systum/resources/Key_Resource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  TextEditingController field = TextEditingController();

  void add() async {
    print("press : Add");
    var text = field.text.toString();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(KeyResource.KEY_TEXT, text);
    field.text = "";
  }

  void read() async {
    print("press : Read");
    field.text = "";
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(KeyResource.KEY_TEXT)) {
      var text = prefs.getString(KeyResource.KEY_TEXT);
      field.text = text.toString();
    }
  }

  void delete() async {
    print("press : Delete");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(KeyResource.KEY_TEXT)) {
      prefs.clear();
      field.text = "";
    }
  }
}
