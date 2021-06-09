import 'package:flutter/material.dart';
import 'package:qltt_danthanh/page/login_success_screen/component/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text("Dăng Nhập Thanh Công"),
      ),
      body: Body(),
    );
  }
}
