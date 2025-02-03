import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_systum/controllers/Splash_Controller.dart';
import 'package:login_systum/resources/Color_Resource.dart';
import 'package:login_systum/resources/Image_Resource.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.put(SplashController());
    controller.splash();
    return Scaffold(
      backgroundColor: ColorResource.WHITE,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              ImageResource.APP_LOGO,
              width: 150,
            ),
          ),
          Column(
            children: [
              Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.all(100),
                alignment: Alignment.center,
                child: Text(
                  "Logify",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
