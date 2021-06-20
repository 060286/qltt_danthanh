import 'package:flutter/material.dart';
import 'package:qltt_danthanh/model/Product.dart';
import 'package:qltt_danthanh/size_config.dart';

import 'components/rounded_icon_btn.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
    );
  }
}

class CustomAppBar extends PreferredSize {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            RoundedIconBtn(
                iconData: Icons.arrow_back, press: () => Navigator.pop(context)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Text("4.5"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
