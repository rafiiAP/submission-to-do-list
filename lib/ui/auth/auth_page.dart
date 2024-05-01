import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/common/color.dart';
import 'package:restaurant_app/data/constants/image.dart';
import 'package:restaurant_app/ui/login/login_page.dart';
import 'package:restaurant_app/ui/register/register_page.dart';
import 'package:restaurant_app/widgets/main_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(welcome),
            W.paddingHeight16(),
            W.paddingHeight16(),
            W.paddingHeight16(),
            SizedBox(
              width: Get.mediaQuery.size.width,
              child: W.button(
                onPressed: () {
                  Get.to(LoginPage());
                },
                child: W.textBody(
                  cText: 'LOGIN',
                  textColor: AppColorConfig.white,
                ),
              ),
            ),
            W.paddingHeight16(),
            SizedBox(
              width: Get.mediaQuery.size.width,
              child: W.button(
                onPressed: () {
                  Get.to(RegisterPage());
                },
                child: W.textBody(
                  cText: 'DAFTAR',
                  textColor: AppColorConfig.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
