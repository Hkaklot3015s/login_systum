import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_systum/controllers/Auth_Controller.dart';
import 'package:login_systum/controllers/Theme_Controller.dart';
import 'package:login_systum/resources/Image_Resource.dart';

class GoDrawer extends StatelessWidget {
  const GoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController theme = Get.put(ThemeController());
    AuthController auth = Get.put(AuthController());
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          children: [
            Card(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () => Get.back(),
                              icon: Icon(Icons.cancel_rounded)),
                        ),
                        Container(
                          height: 150,
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            child: Image.asset(ImageResource.APP_LOGO),
                            maxRadius: 50,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text("Rocky"),
                      subtitle: Text("text@gmail.com"),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dark_mode_rounded),
                title: Text("Dark Mode"),
                onTap: () => theme.changeTheme(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                trailing: Switch(
                  value: theme.isDark.value,
                  onChanged: (value) => theme.changeTheme(),
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.error,
              child: ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text("Logout"),
                onTap: () => auth.logout(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
