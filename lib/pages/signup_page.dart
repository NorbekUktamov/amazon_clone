import 'package:amazon_clone/pages/signin_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static final String id="signup_page";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();
  TextEditingController nameController=TextEditingController();
  _doSignUp(){
    String email=emailController.text;
    String password=passwordController.text;
    String name=nameController.text;
    if(email.isNotEmpty && password.isNotEmpty && name.isNotEmpty){
      Navigator.pushReplacementNamed(context,HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TITLE
              Text("Amazon",style: TextStyle(fontSize: 45,fontFamily: 'Billabong'),),
              //name view
              Container(
                height: 48.0,
                margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color:Colors.grey[200],
                ),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              //email view
              Container(
                height: 48.0,
                margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color:Colors.grey[200],
                ),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              //password view
              Container(
                height: 48.0,
                margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color:Colors.grey[200],
                ),
                child: TextField(
                  controller: passwordController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              //Sign Up Button
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 48,
                child: FlatButton(
                  onPressed: (){
                    _doSignUp();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Sign Up",style: TextStyle(fontSize: 16),),
                ),
              ),

              // SignUp page label
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    SizedBox(width: 10,),

                    GestureDetector(
                      child:Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.black),),
                      onTap: (){
                        Navigator.pushNamed(context,SignInPage.id);
                      },
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
