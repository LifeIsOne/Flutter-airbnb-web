import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/page/home_page.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: header_height,  // import size.dart
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [ // 하트 로고
                        Image.asset("assets/logo.png",
                          width: 30,
                          height: 30,
                          color: Colors.redAccent,
                        ),
                        SizedBox(width: gap_s),
                        Text("RoomOfAll", style: h5 (mColor: Colors.white),)
                      ],
                    ),
                    Spacer()
                    // , _buildAppBarMenu(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}