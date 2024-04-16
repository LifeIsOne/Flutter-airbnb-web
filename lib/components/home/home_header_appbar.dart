import 'package:flutter/material.dart';

import '../../size.dart';
import '../../styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu()
          // , _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("sign up", style: subtitle1(mColor: Colors.white)),
        SizedBox(
          width: gap_m,
        ),
        Text("Log in", style: subtitle1(mColor: Colors.white)),
      ],
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      // TODO :  _buildAppBarLogo
      children: [
        // 하트 로고
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: Colors.redAccent,
        ),
        SizedBox(width: gap_s),
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white),
        )
      ],
    );
  }
}
