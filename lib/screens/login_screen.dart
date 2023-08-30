import 'package:flutter/material.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  void dispose() {
  emailController.dispose();
  passwordController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
              children: [
               SizedBox(height: Dimensions.height20,),
                Container(
                    margin:  EdgeInsets.only(top: Dimensions.height80 ,bottom: Dimensions.height20),
                    padding:  EdgeInsets.only(left: Dimensions.height10,right: Dimensions.height60),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    BigText(text: "Hello,",size: Dimensions.height40,color: Colors.black,),
                 
                    BigText(text: "Welcome Back!",size: Dimensions.height40,color: Colors.black,),

                  ]),
                ),
                Container(
                  margin:  EdgeInsets.only(top: 0,bottom: Dimensions.height20),
                    padding:  EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SmallText(text: "Water is life. Water is a basic human need. In various lines of life, humans need water.",color: Colors.grey,)
                  ]),
                ),
                AppTextField(textEditingController: emailController, hintText: "Email"),
                AppTextField(textEditingController: passwordController, hintText: "Password"),
                Container(
                    margin:  EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20),
                    padding:  EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
                  child:Row(
                    children: [ 
                     const Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      ),
                      SizedBox(width: Dimensions.width20,),
                       SmallText(text: "Or"),
                       SizedBox(width: Dimensions.width20,),
                      const Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      ),
                      ],
                  ),
                ),
                 SizedBox(height: Dimensions.height20,),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      // Padding(padding: EdgeInsets.only(left: 0,right: 40),),
                      SquareTitle(imagePath: "images/gimg.png",txthint: "",),
                       SizedBox(width: 20,),
                      SquareTitle(imagePath: "images/fimg.png",txthint: "",),
                    ],
                ),
                 SizedBox(height: Dimensions.height30),
                 Container(
                  padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallText(text: "Forget Password",size: Dimensions.font12,color: Colors.black,)
                  ]),
                 ),
                SizedBox(height: Dimensions.height160),
                 Container(
                  padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallText(text: "Don’t have an account? ",color: Colors.black,),
                    SmallText(text: "Create Account",color: const Color.fromARGB(255, 107, 76, 185),fontWeight: FontWeight.bold ,)
                  ]),
                 ),
                 Container(
                    width: double.infinity, 
                    margin: EdgeInsets.only(top: Dimensions.height40, bottom: 0),
                    padding: EdgeInsets.only(left: Dimensions.height30, right: Dimensions.height30),
                    height: Dimensions.height60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                        print("Button pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 107, 76, 185),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimensions.height30),
                        ),
                      ),
                      child: SmallText(text: "Get Started",size: Dimensions.font18,color: Colors.white,fontWeight: FontWeight.bold,),
                    ),
                  ),

                ],
        ) ,
    );
  }
}