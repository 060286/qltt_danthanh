import 'package:flutter/material.dart';

import '../../../size_config.dart';


class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      width: double.infinity,
      //height: 90,
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20)),
      child: Text.rich(TextSpan(
          text: "Tựu Trường Ưu Đãi\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "20% Học Phí",
                style:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ])),
    );
  }
}
