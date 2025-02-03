import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_systum/controllers/Home_Controller.dart';
import 'package:login_systum/widgets/Go_Background.dart';
import 'package:login_systum/widgets/Go_Button.dart';
import 'package:login_systum/widgets/Go_Drawer.dart';
import 'package:login_systum/widgets/Go_TextField.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Logify",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      endDrawer: GoDrawer(),
      body: GoBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Shared Preferences",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              child: Divider(
                color: Colors.grey,
                height: 20,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: GoTextField(
                title: "Text",
                controller: controller.field,
              ),
            ),
            const SizedBox(height: 20),
            GoButton(
              title: "Add",
              onTap: () => controller.add(),
            ),
            const SizedBox(height: 10),
            GoButton(
              title: "Read",
              onTap: () => controller.read(),
            ),
            const SizedBox(height: 10),
            GoButton(
              title: "Delete",
              onTap: () => controller.delete(),
            ),
          ],
        ),
      ),
    );
  }
}
