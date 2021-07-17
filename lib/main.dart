import 'package:flutter/material.dart';
import 'package:flutter_back_test/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF9B51E0),
        ),
        scaffoldBackgroundColor: const Color(0xFFE8E9ED),
      ),
      home: const LoginPage(),
    );
  }
}
