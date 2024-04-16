import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
import 'home_header_appbar.dart';
import 'home_header_form.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height, // import size.dart
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HomeHeaderAppBar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
