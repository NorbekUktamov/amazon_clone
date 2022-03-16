
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("Amazon",style: TextStyle(fontFamily: 'Billabong',fontSize: 30,color: Colors.black),),
      ),
      body: Center(
        child: Text("Welcome to Amazon",style: TextStyle(fontSize: 40,fontFamily: 'Billabong'),),
      ),
    );
  }
}
