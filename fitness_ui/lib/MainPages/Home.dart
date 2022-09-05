

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left:20, right:20,top: 40, bottom: 40),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: screenWidth * 0.15,
                    height: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://img.freepik.com/premium-vector/cute-wizard-with-magic-stick-fairytale-avatar-character-cartoon-illustration_357749-1169.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Jacob",
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                        Text("Friday, 10 June",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                          ),),
                      ],
                    ),
                  ),
                ],
              ),

        Container(
          width: screenWidth * 0.15,
          height: screenWidth * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: Colors.grey.shade300)),
          child: Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
          ),
        ),
            ],
          )
        ],
      ),
    );
  }
}
