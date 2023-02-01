import 'package:chat_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChat extends StatefulWidget {
  final Map<String, String>? data;
  const SingleChat({Key? key, required this.data}) : super(key: key);

  @override
  State<SingleChat> createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 10, bottom: 15),
              height: 100,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(widget.data!["image"]!),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.data!["name"]!,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: new BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              "Send mail",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.videocam_outlined,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: chatMessages
                            .map((value) => value["type"]! == "from"
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        widget.data!["image"]!),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            widget.data!["name"]!,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              value["time"]!,
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: new BoxDecoration(
                                          color: Color.fromARGB(255, 21, 23, 28),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15.0),
                                            bottomLeft: Radius.circular(15.0),
                                            bottomRight: Radius.circular(15.0),
                                          ),
                                        ),
                                        child: Text(
                                          value["message"]!,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          value["time"] != null
                                              ? Container(
                                                  padding: EdgeInsets.only(left: 20),
                                                  child: Text(
                                                    value["time"]!,
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                )
                                              : Container()
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: new BoxDecoration(
                                          color: Color.fromARGB(255, 182, 132, 246),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15.0),
                                            bottomLeft: Radius.circular(15.0),
                                            topLeft: Radius.circular(15.0),
                                          ),
                                        ),
                                        child: Text(
                                          value["message"]!,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ))
                            .toList(),
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 182, 132, 246),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          image: DecorationImage(
                              image: NetworkImage("https://images.all-free-download.com/images/graphiclarge/business_background_meeting_theme_cartoon_characters_6838334.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0, right:15, top: 60),
              child: TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255,21,23,28),
                  hintText: "Type Message Here....",
                  suffixIcon: Icon(Icons.send_outlined, color: Colors.green.shade200,),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide:  BorderSide(color: Color.fromARGB(255,21,23,28), width: 0 ),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide:  BorderSide(color: Color.fromARGB(255,21,23,28), width: 0 ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
