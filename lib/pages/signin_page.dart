
import 'package:amazon_clone/animations/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/pages/home_page.dart';
import 'package:amazon_clone/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static final String id="signin_page";

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with SingleTickerProviderStateMixin {

  late AnimationController _scaleController;
   Animation<double>? _scaleAnimation;

  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();
  _doSignIn(){
    String email=emailController.text;
    String password=passwordController.text;
    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context,HomePage.id);
    }
  }

  @override
  void initState() {

    super.initState();
    _scaleController=AnimationController(vsync: this,duration: Duration(milliseconds: 300));
    _scaleAnimation=Tween<double>(begin: 1.0,end: 30.0).animate(_scaleController)
      ..addStatusListener((status) {
        if(status==AnimationStatus.completed){

        }
      });

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
              FadeAnimation(1,  Text("Amazon",style: TextStyle(fontSize: 45,fontFamily: 'Billabong'),),),

              //email view
              FadeAnimation(2.2,  Container(
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
              ), ),

              //password view

              FadeAnimation(2.4, Container(
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
              ), ),

              //Sign in page
              FadeAnimation(3.6,   Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 48,
                child: FlatButton(
                  onPressed: (){
                    _doSignIn();

                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Sign In",style: TextStyle(fontSize: 16),),

                ),
              ), ),

              // SignUp page label
              FadeAnimation(4.8,   Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    SizedBox(width: 10,),

                    GestureDetector(
                      child:Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.black),),
                      onTap: (){
                        Navigator.pushReplacementNamed(context,SignUpPage.id);
                      },
                    ),
                  ],
                ),
              ), ),

            ],
          ),
        ),
      ),
    );
  }
}
