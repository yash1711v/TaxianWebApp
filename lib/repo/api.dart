import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../InjectionContainer/injection_Container.dart';
import '../cache/shared_preference.dart';
import '../flavors/config/flavor_config.dart';
import '../helper/error_helper.dart';

class ApiCaller {
  final String _baseUrl = locator<FlavorConfig>().baseUrl ?? "";
  final _pref = locator<Pref>().pref;

  Future<dynamic> post(String url, dynamic data,
      {bool withToken = false, Map<String, String>? query}) async {
    var responseJson;
    try {
      final Map<String, String> header = {"Content-Type": "application/json"};
      if (withToken) {
        header["Bearer Token"] = _pref.getString("Token") ?? '';
      }
      final response = await http.post(
          Uri.parse('$_baseUrl$url').replace(queryParameters: query),
          body: jsonEncode(data),
          headers: header);
      responseJson = _returnResponse(response);

    } on SocketException {
      debugPrint('No Internet connection');
    } catch (e) {
      debugPrint(e.toString());
    }

    return responseJson;
  }


  Future<dynamic> postWithHeader(String url, dynamic data,
      {bool withToken = false}) async {
    var responseJson;
    try {
      final Map<String, String> header = {"Content-Type": "application/json"};
      if (withToken) {
        header["Bearer Token"] = _pref.getString("Token") ?? '';
      }
      final response = await http.post(Uri.parse('$_baseUrl$url'),
          body: jsonEncode(data), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      debugPrint('No Internet connection');
    } catch (e) {
      debugPrint(e.toString());
    }

    return responseJson;
  }


  static dynamic _returnResponse(http.Response response) {
    final errorHelper = ErrorHelper();
    var responseJson = json.decode(response.body.toString());
    switch (response.statusCode) {
      case 200:
      case 201:
        return responseJson;
      case 412:
        toastHandler(responseJson);
        return responseJson;
      case 400:
      // throw Exception([response.statusCode, response.body.toString()]);
      case 401:
        break;
      case 403:
        // throw Exception([response.statusCode, response.body.toString()]);
        break;
      case 422:
        // var responseJson = json.decode(response.body.toString());
        toastHandler(responseJson);
        errorHelper.handleError(
            responseJson["error"]["code"] ?? responseJson["error"]["message"]);
        return responseJson;
      case 404:
        // var responseJson = json.decode(response.body.toString());
        errorHelper.handleError(
            responseJson["error"]["code"] ?? responseJson["error"]["message"]);
        return responseJson;
      case 500:
      default:
        debugPrint(
            "Error occured while Communication with Server with StatusCode : ${response.statusCode}");
    }
  }

  static toastHandler(response) {
    try {
      final errorHelper = ErrorHelper();
      errorHelper.handleError(response["data"]["code"] ?? response["error"]);
      // ignore: empty_catches
    } catch (e) {}
  }
}
