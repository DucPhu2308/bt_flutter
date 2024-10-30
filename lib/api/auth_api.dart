import 'dart:convert';

import 'package:bt_flutter/api/base_api.dart';
import 'package:http/http.dart' as http;

class AuthAPI extends BaseApi {
  static login(String email, String password) async {
    final response =
        await http.post(Uri.parse('$BaseApi.baseUrl/auth/login'), body: {
      'email': email,
      'password': password,
    });

    return jsonDecode(response.body);
  }
}
