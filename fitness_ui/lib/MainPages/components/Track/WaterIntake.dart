import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../../../constants.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({Key? key}) : super(key: key);

  @override
  State<WaterIntake> createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: screenHeight * 0.3,
      width: screenWidth,
      decoration: new BoxDecoration(
          color: Colors.orange.shade50,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Water Intake",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 10,),
          Text("Recommended 5 liter",
            style: TextStyle(
                fontSize: 12,
              color: Colors.grey
            ),
          ),
          SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            child: LiquidCircularProgressIndicator(
              value: 0.25, // Defaults to 0.5.
              valueColor: AlwaysStoppedAnimation(Colors.blue.shade300), // Defaults to the current Theme's accentColor.
              backgroundColor: Colors.blue.shade50, // Defaults to the current Theme's backgroundColor.
              borderColor: Colors.blue.shade200,
              borderWidth: 2.0,
              direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
              center: Text("25 %",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ),
        ],
      )

      ],
      ),
    );
  }
}
