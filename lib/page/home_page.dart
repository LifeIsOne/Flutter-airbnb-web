import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

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
          // TODO : HomeBody
          child: SizedBox(
            width: getBodyWidth(context),
            child: Column(
              children: [
                Stack(
                  children: [
                    _bulidBannerImage(),
                    Positioned(
                      top: 40,
                      left: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            constraints: BoxConstraints(maxWidth: 250),
                            child: Text(
                              "새로운 공간에 머물로 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.",
                              style: subtitle1(mColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: gap_m,
                          ),
                          SizedBox(
                            // 바디 가까운 여행지 둘러보기 버튼
                            height: 35,
                            width: 170,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "가까운 여행지 둘러보기",
                                style: subtitle2(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  ClipRRect _bulidBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }
}
