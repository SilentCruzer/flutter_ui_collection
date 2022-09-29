import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({Key? key}) : super(key: key);

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: screenHeight * 0.3,
      width: screenWidth,
      decoration: new BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nutrition", style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 10,),
          Text("Target: P - 63 g",
          style: TextStyle(
            color: Colors.grey
          ),)
        ],
      ),
    );
  }
}
