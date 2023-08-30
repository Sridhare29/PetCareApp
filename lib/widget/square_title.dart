import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath;
  final String txthint;
  const SquareTitle({super.key, required this.imagePath,required this.txthint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 166, 165, 165)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white),
      child: Row(
        children: [
          Image.asset(imagePath,
          height: 40,),
          const SizedBox(width: 10), 
          Text(
            txthint,
            style: const TextStyle(
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