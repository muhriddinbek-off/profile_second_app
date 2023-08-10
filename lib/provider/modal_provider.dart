import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:profile_second_app/core/model.dart';

class UserProvider with ChangeNotifier {
  UserModal? userModal;
  Future<void> userInfo() async {
    Uri url = Uri.parse('https://randomuser.me/api');

    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    userModal = UserModal.fromJson(data);
  }
}
