import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';
import 'package:qltt_danthanh/enums.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body()
     // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}