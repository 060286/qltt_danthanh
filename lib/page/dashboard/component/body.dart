import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qltt_danthanh/page/dashboard/component/discount_banner.dart';
import 'package:qltt_danthanh/size_config.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          DiscountBanner(),
          Categories(),
        ],
      ),
    ));
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFEDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(categories[0]["icon"]),
            ),
          )
        ],
      ),
    );
  }
}
