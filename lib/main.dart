import 'package:flutter/material.dart';
import 'package:qltt_danthanh/constants.dart';
import 'package:qltt_danthanh/page/home/home_page.dart';
import 'package:qltt_danthanh/page/splash/splash_screen.dart';
import 'package:qltt_danthanh/routes.dart';
import 'package:qltt_danthanh/theme.dart';
import 'page/account/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Trung Tâm Đan Thanh',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

// ThemeData theme() {
//   return ThemeData(
//       fontFamily: "Muli",
//       scaffoldBackgroundColor: Colors.white,
//       appBarTheme: AppBarTheme(
//           color: Colors.white,
//           elevation: 0,
//           brightness: Brightness.light,
//           iconTheme: IconThemeData(color: Colors.black),
//           textTheme: TextTheme(
//             headline6: TextStyle(color: Color(0XFF888888), fontSize: 18),
//           )));
// }
