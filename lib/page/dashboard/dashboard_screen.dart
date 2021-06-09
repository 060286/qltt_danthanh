import 'package:flutter/material.dart';
import 'package:qltt_danthanh/page/dashboard/component/body.dart';

class DashboardScreen extends StatelessWidget {
  static String routeName = "/dashboard_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
