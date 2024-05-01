import 'dart:convert';

import 'package:restaurant_app/data/model/response_register_model.dart';

import 'package:http/http.dart' as http;

class ApiTodoList {
  static const String _baseUrl = 'http://94.74.86.174:8080/api';

  Future<dynamic> register(
      String email, String password, String username) async {
    try {
      Map<String, dynamic> data = {
        'email': email,
        'password': password,
        'username': username,
      };
      String dataJson = jsonEncode(data);
      String url = "$_baseUrl/register";

      final response = await http.post(
        Uri.parse(url),
        body: dataJson,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        return responseRegisterModelFromJson(response.body);
      }
      if (response.statusCode == 400) {
        return responseRegisterModelFromJson(response.body);
      }
    } catch (error) {
      return Exception(error);
    }
  }

  Future<dynamic> login(String password, String username) async {
    try {
      Map<String, dynamic> data = {
        'password': password,
        'username': username,
      };
      String dataJson = jsonEncode(data);
      String url = "$_baseUrl/login";

      final response = await http.post(
        Uri.parse(url),
        body: dataJson,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print('--${response.statusCode}');
      if (response.statusCode == 200) {
        return responseRegisterModelFromJson(response.body);
      }
      if (response.statusCode == 400) {
        return responseRegisterModelFromJson(response.body);
      }
    } catch (error) {
      return Exception(error);
    }
  }
}
