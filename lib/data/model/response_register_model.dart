import 'dart:convert';

ResponseRegisterModel responseRegisterModelFromJson(String str) =>
    ResponseRegisterModel.fromJson(json.decode(str));

String responseRegisterModelToJson(ResponseRegisterModel data) =>
    json.encode(data.toJson());

class ResponseRegisterModel {
  int? statusCode;
  String? message;
  dynamic errorMessage;
  dynamic data;

  ResponseRegisterModel({
    this.statusCode,
    this.message,
    this.errorMessage,
    this.data,
  });

  factory ResponseRegisterModel.fromJson(Map<String, dynamic> json) =>
      ResponseRegisterModel(
        statusCode: json["statusCode"],
        message: json["message"],
        errorMessage: json["errorMessage"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "errorMessage": errorMessage,
        "data": data,
      };
}
