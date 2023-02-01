import 'package:chat_ui/MainPages/components/ChatTab.dart';
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
      padding: EdgeInsets.only(top:50, left: 20, right:20),
      child: Column(
        children: [
          Container(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255,21,23,28),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  borderSide:  BorderSide(color: Color.fromARGB(255,21,23,28), width: 0 ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          ChatTab(),
        ],
      )
    );
  }
}
