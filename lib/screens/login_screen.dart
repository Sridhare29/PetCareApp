import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:petcare_app/attribute/Dimensions.dart';
import 'package:petcare_app/widget/apptext_field.dart';
import 'package:petcare_app/widget/smalltext_widget.dart';
import 'package:petcare_app/widget/square_title.dart';

import '../widget/bigtext_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
              children: [
               SizedBox(height: 20,),
                Container(
                    margin:  EdgeInsets.only(top: 80 ,bottom: 20),
                    padding:  EdgeInsets.only(left: 10,right: 60),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    BigText(text: "Hello,",size: 40,color: Colors.black,),
                 
                    BigText(text: "Welcome Back!",size: 40,color: Colors.black,),

                  ]),
                ),
                Container(
                  margin:  EdgeInsets.only(top: 0,bottom: 20),
                    padding:  EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SmallText(text: "Water is life. Water is a basic human need. In various lines of life, humans need water.",color: Colors.grey,)
                  ]),
                ),
                AppTextField(textEditingController: emailController, hintText: "Email"),
                AppTextField(textEditingController: passwordController, hintText: "Password"),
                Container(
                    margin:  EdgeInsets.only(top: 20,bottom: 20),
                    padding:  EdgeInsets.only(left: 30,right: 30),
                  child:Row(
                    children: [ 
                      Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      ),
                       SmallText(text: "         Or          "),
                       Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      ),
                      ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 0,right: 40),),
                      SquareTitle(imagePath: "images/google.png",txthint: "Google  ",),
                      const SizedBox(width: 20,),
                      SquareTitle(imagePath: "images/facebook.png",txthint: "Facebook",),
                    ],
                ),
                 SizedBox(height: 30),
                 Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallText(text: "Forget Password",size: 12,color: Colors.black,)
                  ]),
                 ),
                SizedBox(height: 160),
                 Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallText(text: "Don’t have an account? ",color: Colors.black,),
                    SmallText(text: "Create Account",color: Color.fromARGB(255, 107, 76, 185),fontWeight: FontWeight.bold ,)
                  ]),
                 ),
                 Container(
                    width: double.infinity, 
                    margin: EdgeInsets.only(top: 40, bottom: 0),
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                        print("Button pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 107, 76, 185),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: SmallText(text: "Get Started",size: 18,color: Colors.white,fontWeight: FontWeight.bold,),
                    ),
                  ),

                ],
        ) ,
    );
  }
}