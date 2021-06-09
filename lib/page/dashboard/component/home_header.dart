import 'package:flutter/material.dart';
import 'package:qltt_danthanh/page/dashboard/component/search_field.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItem: 0,
            press: () {
              print("Người dùng click xem giỏ hàng");
            },
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItem: 3,
            press: () {
              print("Người dùng click xem thông báo");
            },
          ),
        ],
      ),
    );
  }
}
