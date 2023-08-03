import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath;
  final String txthint;
  const SquareTitle({super.key, required this.imagePath,required this.txthint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 166, 165, 165)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white),
      child: Row(
        children: [
          Image.asset(imagePath,
          height: 40,),
          SizedBox(width: 10), // Add some spacing between the image and text
          Text(
            txthint,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          ),
        ],
      ),
      );
  }
}