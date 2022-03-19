import 'package:amazon_clone/pages/home_page.dart';
import 'package:amazon_clone/pages/signin_page.dart';
import 'package:amazon_clone/pages/signup_page.dart';
import 'package:amazon_clone/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home:SplashPage(),
      routes: {
        SplashPage.id:(context)=>SplashPage(),
        HomePage.id:(context)=>HomePage(),
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage(),
      },
    );
  }
}
