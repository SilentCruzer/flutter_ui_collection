import 'package:chat_ui/MainPages/SingleChat.dart';
import 'package:chat_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            height: 60,
            color: Colors.transparent,
            padding: EdgeInsets.only(bottom: 20),
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255,242,253,136),
              ),
              tabs: [
                Tab(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.message_outlined, size: 15,),
                            SizedBox(width: 5,),
                            Text('All'),
                            SizedBox(width: 5,),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              child: Text("35", style: TextStyle(
                                fontSize: 9,
                                color: Colors.white
                              ),),
                            )
                          ],
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Icon(Icons.live_tv, size: 15,),
                            SizedBox(width: 5,),
                            Text('Live Chat'),
                          ],
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Icon(Icons.archive_outlined, size: 15,),
                            SizedBox(width: 5,),
                            Text('Archived'),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),

          Container(
            //child: Container(
            height: MediaQuery.of(context).size.height * 0.75 ,
            //color: Colors.blue,
            child: TabBarView(
              children: [
                MainChat(context),
                Text('Two'),
                Text('Three'),
              ],
            ),
          ),
          //),
          //Container(),
        ],
      ),
    );
  }

  Widget MainChat(BuildContext context){
    print(chatData);
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: chatData.map((value) =>
            InkWell(
              onTap: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingleChat(data: value))),
              },
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(value["image"]!),
                                  fit: BoxFit.cover
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(value["name"]!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                                    SizedBox(width: 10,),
                                    value["online"]! == "yes" ? (Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.green.shade300,
                                        )
                                    )) : SizedBox(),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(value["number"]! , style: TextStyle(color: Colors.grey, fontSize: 12),),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),

                      Row(
                        children: [
                          Text(value["time"]!,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.0, left: 12),
                      child: Text(value["message"]!,overflow: TextOverflow.ellipsis , style: TextStyle(color: Colors.grey), maxLines: 1,),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            )
            ).toList()
          ),
        ),
      ),
    );
  }
}
