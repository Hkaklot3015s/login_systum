import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_systum/controllers/Auth_Controller.dart';
import 'package:login_systum/resources/Color_Resource.dart';
import 'package:login_systum/resources/Icon_Resource.dart';
import 'package:login_systum/resources/Image_Resource.dart';
import 'package:login_systum/widgets/Go_Background.dart';
import 'package:login_systum/widgets/Go_Button.dart';
import 'package:login_systum/widgets/Go_Icon_Button.dart';
import 'package:login_systum/widgets/Go_TextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    Size size = MediaQuery.of(context).size;
    controller.createAccount();
    return Scaffold(
      body: GoBackground(
        child: Column(
          children: [
            // app logo
            Container(
              width: size.width,
              height: 200,
              alignment: Alignment.center,
              child: Image.asset(
                ImageResource.APP_LOGO,
                width: 120,
              ), // logo image
            ),

            // login text
            Text(
              "Login",
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Divider(
                height: 24,
                color: ColorResource.GREY,
              ),
            ),

            // form fields
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: controller.formkey,
                child: Column(
                  children: [
                    GoTextField(
                      title: "Email : test@gmail.com",
                      controller: controller.email,
                    ),
                    const SizedBox(height: 10),

                    GoTextField(
                      title: "Password : 12345",
                      controller: controller.password,
                    ),
                    const SizedBox(height: 5),

                    // forgot password button
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => controller.forgotPassword(),
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // login button
            GoButton(
              title: "Login",
              onTap: () {
                controller.login();
              },
            ),

            const SizedBox(height: 50),

            // login with other app
            Container(
              child: Column(
                children: [
                  Text(
                    "Or Continue With",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoIconButton(
                        icon: IconResource.IC_FB,
                        onTap: () => controller.login_facebook(),
                      ),
                      GoIconButton(
                        icon: IconResource.IC_GOOGLE,
                        onTap: () => controller.login_google(),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Divider(
                height: 30,
                color: ColorResource.GREY,
              ),
            ),

            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: ColorResource.BLACK,
                ),
                children: [
                  TextSpan(
                      text: "This App for texsting perpas !",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
