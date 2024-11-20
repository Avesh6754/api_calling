import 'package:demo2/modal/postModal.dart';
import 'package:demo2/provider/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostProvider extends ChangeNotifier{
  List postList=[];
  ApiHepler apiHepler=ApiHepler();

  Future<void> postData()
  async {
    final json=await apiHepler.fetchPostData();
    postList=json.map((e) =>PostModal.fromJson(e)).toList();
    notifyListeners();
  }
  PostProvider()
  {
    postData();
  }
}