import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/data/api/api_todo_list_service.dart';
import 'package:restaurant_app/data/model/response_register_model.dart';
import 'package:restaurant_app/ui/auth/auth_page.dart';

class RegisterGetx extends GetxController {
  ApiTodoList apiTodoList = ApiTodoList();
  TextEditingController cUserName = TextEditingController(),
      cEmail = TextEditingController(),
      cPassword = TextEditingController();
  ResponseRegisterModel registerModel = ResponseRegisterModel();

  register() {
    apiTodoList
        .register(cEmail.text, cPassword.text, cUserName.text)
        .then((value) {
      if (value.statusCode == 2000) {
        registerModel = value;
        Get.snackbar('Berhasil', registerModel.message!);
        Get.offAll(const AuthPage());
      }
      if (value.statusCode == 400) {
        registerModel = value;
        Get.snackbar('Gagal', registerModel.errorMessage!);
      }
    });
  }
}
