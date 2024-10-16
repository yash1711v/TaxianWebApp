import 'dart:io';
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../InjectionContainer/injection_Container.dart';
import 'api.dart';

//TODO : implement with enum and different method
bool isGroomer = true;

class Repo {
  Map<String, dynamic> _removeNull(Map<String, dynamic> body) {
    body.removeWhere((key, value) => value == null);
    return body;
  }

  Future<dynamic> login(
      {required String adminId, required String password}) async {
    var body = {"mobileNumber": adminId, "pin": password};
    var res = await  locator<ApiCaller>().post("/api/admins/authenticate-and-generate-token", body);
    return res;
  }


}
