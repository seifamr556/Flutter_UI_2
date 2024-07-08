import 'package:flutter/material.dart';
import 'package:flutter_ui_2/home.dart';
import 'package:flutter_ui_2/item_page.dart';

import 'sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      home: SignInScreen(),
    );
  }
}