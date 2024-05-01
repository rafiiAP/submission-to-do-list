import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/data/api/api_todo_list_service.dart';
import 'package:restaurant_app/data/model/response_register_model.dart';
import 'package:restaurant_app/ui/dashboard.dart';

class LoginGetx extends GetxController {
  TextEditingController cUsername = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  ApiTodoList apiTodoList = ApiTodoList();
  ResponseRegisterModel registerModel = ResponseRegisterModel();

  login() {
    apiTodoList.login(cPassword.text, cUsername.text).then((value) {
      if (value.errorMessage == null) {
        registerModel = value;
        Get.snackbar('Berhasil', registerModel.message!);
        Get.offAll(DashboardPage());
      } else {
        Get.snackbar('Gagal', registerModel.errorMessage);
      }
    });
  }
}
