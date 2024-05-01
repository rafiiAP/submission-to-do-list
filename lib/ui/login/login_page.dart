import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/common/color.dart';
import 'package:restaurant_app/get/login/login_getx.dart';
import 'package:restaurant_app/widgets/main_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginGetx ctrl = Get.put(LoginGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: W.textBody(cText: 'Login'),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: W.button(
          onPressed: () {
            ctrl.login();
          },
          child: W.textBody(
            cText: 'Login',
            textColor: AppColorConfig.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            W.input(
              labelText: 'Username',
              controller: ctrl.cUsername,
            ),
            W.paddingHeight16(),
            W.input(
              labelText: 'Password',
              controller: ctrl.cPassword,
            ),
          ],
        ),
      ),
    );
  }
}
