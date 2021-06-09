import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:qltt_danthanh/constants.dart';
import 'package:qltt_danthanh/page/sign_in/sign_in_screen.dart';
import 'package:qltt_danthanh/page/splash/components/splash_content.dart';
import 'package:qltt_danthanh/size_config.dart';
import 'package:qltt_danthanh/components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "TRUNG TÂM DẠY THÊM ĐAN THANH",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "ĐỂ VIỆC HỌC TRỞ NÊN THÚ VỊ \nNÂNG CAO TRÍ TUỆ TRẺ",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "ĐÀO TẠO - TRI THỨC - TẬN TÂM \nĐĂNG KÝ NGAY",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                      text: "Tiếp Theo",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

