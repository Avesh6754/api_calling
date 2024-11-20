import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ApiHepler{
  final api='https://jsonplaceholder.typicode.com/comments';

  Future fetchPostData()
  async {
    Uri url=Uri.parse(api);
    Response response=await http.get(url);
    if(response.statusCode==200)
      {
        String data=response.body;
        final json=jsonDecode(data);
        return json;
      }
    return [];

  }
}