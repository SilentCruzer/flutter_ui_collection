

import 'package:fitness_ui/MainPages/components/Home/HomeChart.dart';
import 'package:fitness_ui/MainPages/components/Home/HomePlans.dart';
import 'package:fitness_ui/MainPages/components/Home/HomeSlide.dart';
import 'package:fitness_ui/MainPages/components/Home/HomeTopBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:20, right:20,top: 40),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              SizedBox(height: 20),
              HomeSlide(),
              SizedBox(height: 20),
              Text("My Plan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              HomePlans(),
              SizedBox(height: 20),
              Text("Activities",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              HomeChart(),
            ],
          ),
        ),
      ),
    );
  }
}
