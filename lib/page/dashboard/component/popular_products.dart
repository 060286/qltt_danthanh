import 'package:flutter/material.dart';
import 'package:qltt_danthanh/model/Product.dart';
import 'package:qltt_danthanh/page/dashboard/component/product_card.dart';
import 'package:qltt_danthanh/page/details/components/rounded_icon_btn.dart';
import 'file:///C:/Users/ThanhThuan%20User/AndroidStudioProjects/qltt_danthanh/lib/page/details/details_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Khóa Học Nổi Bật", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                      context, DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(
                          product: demoProducts[index])),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        )
      ],
    );
  }
}
