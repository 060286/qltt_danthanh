import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qltt_danthanh/page/dashboard/component/discount_banner.dart';
import 'package:qltt_danthanh/page/dashboard/component/special_offers.dart';
import 'package:qltt_danthanh/size_config.dart';
import 'categories.dart';
import 'home_header.dart';
import 'popular_products.dart';

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
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Categories(),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              SpecialOffers(),
              PopularProducts()
            ],
          ),
        ));
  }
}
