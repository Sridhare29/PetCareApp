// ignore: implementation_imports
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height =1.2;
  FontWeight fontWeight;
  SmallText({super.key, this.color = const  Color(0xFFccc7c5) ,required this.text,this.size=12,this.height = 1.2,this.fontWeight = FontWeight.normal,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: 'Roboto',
      color: color,
      fontSize: size,
      height: height,
      fontWeight: fontWeight,
      ),
    );
  }
}