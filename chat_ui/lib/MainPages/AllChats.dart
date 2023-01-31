import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllChats extends StatefulWidget {
  const AllChats({Key? key}) : super(key: key);

  @override
  State<AllChats> createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("All Chats", style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}