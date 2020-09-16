import 'package:flutter/material.dart';
import 'package:flutter_park/pages/info_page.dart';
import 'package:flutter_park/pages/landing_page.dart';
import 'package:flutter_park/pages/login_page.dart';
import 'package:flutter_park/pages/menu_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LandingPage(),
        'loginpage': (BuildContext context) => LoginPage(),
        'menupage': (BuildContext context) => MenuPage(),
        'myinfopage': (BuildContext context) => MyInfoPage(),
      },
    );
  }
}
