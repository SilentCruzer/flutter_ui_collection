

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
      padding: EdgeInsets.only(left:20, right:20,top: 40, bottom: 40),
      child: Column(
        children: [
          HomeTopBar(),
          SizedBox(height: 10),
          HomeSlide()

        ],
      ),
    );
  }
}
