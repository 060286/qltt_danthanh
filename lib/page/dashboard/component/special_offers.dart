import 'package:flutter/material.dart';
import 'package:qltt_danthanh/page/dashboard/component/section_title.dart';

import '../../../size_config.dart';



class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Khóa học ưu đãi",
          press: () {
            print("Nhấn xem thêm khóa học ưu đãi");
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/banner-education2.png",
                category: "Toán Học",
                numOfBrands: 5,
                press: () {
                  print("Người dùng nhấn vô Special Offer Card");
                },
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                category: "Tiếng Anh",
                numOfBrands: 5,
                press: () {
                  print("Người dùng nhấn vô Special Offer Card");
                },
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

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(232),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15)
                          ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenWidth(10)),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "$numOfBrands Môn Học")
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}