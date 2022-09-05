import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
