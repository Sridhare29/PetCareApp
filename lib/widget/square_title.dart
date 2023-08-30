import 'package:flutter/material.dart';
import 'package:petcare_app/attribute/Dimensions.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath;
  final String txthint;
  const SquareTitle({super.key, required this.imagePath,required this.txthint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.height10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 166, 165, 165)),
        borderRadius: BorderRadius.circular(Dimensions.radius16),
        color: Colors.white),
      child: Row(
        children: [
          Image.asset(imagePath,
          height: Dimensions.height40,),
           SizedBox(width: Dimensions.width10), 
          Text(
            txthint,
            style:  TextStyle(
              fontSize: Dimensions.font18,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          ),
        ],
      ),
      );
  }
}