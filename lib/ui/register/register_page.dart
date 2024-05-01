import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/common/color.dart';
import 'package:restaurant_app/widgets/main_widget.dart';

import '../../get/register/register_getx.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final RegisterGetx ctrl = Get.put(RegisterGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: W.textBody(cText: 'Register'),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: W.button(
          onPressed: () {
            ctrl.register();
          },
          child: W.textBody(
            cText: 'REGISTER',
            textColor: AppColorConfig.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            W.input(
              controller: ctrl.cUserName,
              labelText: 'Username',
            ),
            W.paddingHeight16(),
            W.input(
              controller: ctrl.cEmail,
              labelText: 'Email',
            ),
            W.paddingHeight16(),
            W.input(
              controller: ctrl.cPassword,
              labelText: 'Password',
            ),
          ],
        ),
      ),
    );
  }
}
