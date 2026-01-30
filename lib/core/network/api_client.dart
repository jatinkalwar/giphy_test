import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;





Future<dynamic> callGetApi(String endpoint ,BuildContext context) async {
 
  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
   
  };
  print('endpoint is $endpoint');
  log('headers is $headers');

  try {
    http.Response response;

    response = await http.get(
      Uri.parse(endpoint),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } 
    
    else if (response.statusCode == 401){

    }
    else {
     
      if (kDebugMode) {
        print('Error: ${response.statusCode} ${response.body}');
      }
    }
  } on Exception catch (e) {
    if (kDebugMode) {
      print('Exception: $e');
    }
  }
  return null;
}

const String api= "kFyUu3ccFyuxNRnugU9eFDlJjYKkdEk3";
const String baseUrl = 'https://api.giphy.com/v1/gifs';

