import 'package:flutter/material.dart';
import 'package:flutter_airbnb/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 오른쪽 상단 DEBUG 없애기
      home: HomePage(),
    );
  }
}
