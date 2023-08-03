import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/apptext_field.dart';
import '../widget/bigtext_widget.dart';
import '../widget/smalltext_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
               SizedBox(height: 20,),
                Container(
                    margin:  EdgeInsets.only(top: 80 ,bottom: 20),
                    padding:  EdgeInsets.only(left: 0,right: 140),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    BigText(text: "Create New",size: 40,color: Colors.black,),
                 
                    BigText(text: "Account",size: 40,color: Colors.black,),

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
                AppTextField(textEditingController: fullnameController, hintText: "Fullname"),
                AppTextField(textEditingController: emailController, hintText: "Email"),
                AppTextField(textEditingController: passwordController, hintText: "Password"),

        ],
      ),
    );
  }
}