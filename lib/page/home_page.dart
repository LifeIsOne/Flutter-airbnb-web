import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

import '../components/home/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeHeader(),
        Align(
          child: SizedBox(
            width: getBodyWidth(context),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/banner.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 320,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
