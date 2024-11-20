import 'package:demo2/provider/api_helper.dart';
import 'package:demo2/provider/postProvider.dart';
import 'package:demo2/view/homePage.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(

          create: (context) => PostProvider(),
        )
      ],
      builder: (context, child) =>MaterialApp(
          home: HomePage()
      ),
    );
  }
}