import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qltt_danthanh/components/custom_surfix_icon.dart';
import 'package:qltt_danthanh/components/default_button.dart';
import 'package:qltt_danthanh/components/form_error.dart';
import 'package:qltt_danthanh/components/no_account_text.dart';
import 'package:qltt_danthanh/constants.dart';
import 'package:qltt_danthanh/page/forgot_password/forgot_password_screen.dart';
import 'package:qltt_danthanh/page/sign_in/sign_in_screen.dart';
import 'package:qltt_danthanh/size_config.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qltt_danthanh/page/sign_in/components/sign_form.dart';
import 'package:qltt_danthanh/components/social_cart.dart';
import 'package:qltt_danthanh/routes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "Đan Thanh Education",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Vui lòng đăng nhập để sử dụng \n Ứng Dụng",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}
