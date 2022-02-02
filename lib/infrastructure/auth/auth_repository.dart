// ignore_for_file: prefer_final_fields

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class AuthRepository {
  Dio _dio = Dio();
}

Future<String> signInWithEmailAndPassword({
  @required String? email,
  @required String? password,
}) async {
  Response _response;

  Map<String, dynamic> requestData = {
    "email" : email,
    "password" : password,
  };

  _response =
    await _dio.post("https://reqres.in/api/login",data: requestData );
    String _result = _response.data.toString();
    return _result;
}
