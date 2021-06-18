import 'package:flutter/material.dart';
import 'package:login_ui/homepage.dart';
import 'login_page.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: LoginPage(),
      routes: routes,
    );
  }
}
