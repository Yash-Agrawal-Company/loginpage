
import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';
import 'utils/MyRoutes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.white),
      ),
      initialRoute: MyRoutes.LoginPage,
      routes: {
       MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.LoginPage :(context) => LoginPage(),
      },
    );
  }
}






