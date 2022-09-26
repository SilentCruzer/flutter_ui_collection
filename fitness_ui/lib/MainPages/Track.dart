import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fitness_ui/MainPages/components/Track/KcalConsumed.dart';
import 'package:fitness_ui/MainPages/components/Track/WaterIntake.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Food summary", style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  monthTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 0
                  ),
                  dateTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12
                  ),
                  dayTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12
                  ),
                ),
              ),
              SizedBox(height: 20,),
              KcalConsumed(),
              SizedBox(height: 30,),
              WaterIntake(),
            ],
          ),
        ),
      ),
    );

  }
}
