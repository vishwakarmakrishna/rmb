import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:rmb/domain/networking/api_exceptions.dart';

class ApiBaseHelper {
  final String _baseUrl = "https://fakestoreapi.com/";

  Future<dynamic> get(String url) async {
    debugPrint('Api Get, url $url');
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(_baseUrl + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      debugPrint('No net');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api get recieved!');
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body) async {
    debugPrint('Api Post, url $url');
    dynamic responseJson;
    try {
      final response = await http.post((Uri.parse(_baseUrl + url)), body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      debugPrint('No net');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api post.');
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body) async {
    debugPrint('Api Put, url $url');
    dynamic responseJson;
    try {
      final response = await http.put((Uri.parse(_baseUrl + url)), body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      debugPrint('No net');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api put.');
    debugPrint(responseJson.toString());
    return responseJson;
  }

  Future<dynamic> delete(String url) async {
    debugPrint('Api delete, url $url');
    dynamic apiResponse;
    try {
      final response = await http.delete((Uri.parse(_baseUrl + url)));
      apiResponse = _returnResponse(response);
    } on SocketException {
      debugPrint('No net');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api delete.');
    return apiResponse;
  }
}

dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      return response.body;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
