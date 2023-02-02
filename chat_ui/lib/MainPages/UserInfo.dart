import 'package:chat_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  final Map<String, String>? data;
  const UserInfo({Key? key,required this.data }) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top:50, left:10, right: 10, bottom: 20),
              decoration: new BoxDecoration(
                color: Colors.indigo.shade500,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios_sharp, color: Colors.white, size: 20,),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    widget.data!["image"]!),
                                fit: BoxFit.cover)),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white, size: 20,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.data!["name"]!, style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),),
                        SizedBox(width: 5,),
                        Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.shade300,
                            )
                        )
                      ],
                    ),
                  ),
                  Text(widget.data!["number"]!, style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200
                  ),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: new BoxDecoration(
                          color: Colors.indigo.shade400,
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                        child: Icon(Icons.call_outlined, color: Colors.white,),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: new BoxDecoration(
                          color: Colors.indigo.shade400,
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                        child: Icon(Icons.video_call_outlined, color: Colors.white,),
                      ),
                      SizedBox(width: 15,),Container(
                        padding: EdgeInsets.all(10),
                        decoration: new BoxDecoration(
                          color: Colors.indigo.shade400,
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                        child: Icon(Icons.volume_off_outlined, color: Colors.white,),
                      ),SizedBox(width: 15,),Container(
                        padding: EdgeInsets.all(10),
                        decoration: new BoxDecoration(
                          color: Colors.indigo.shade400,
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                        child: Icon(Icons.archive_outlined, color: Colors.white,),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("Hello everybody!!", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200
                  ),),
                  SizedBox(height: 5,),
                  Text("I am skilled in the following:", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200
                  ),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Project manager", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200
                        ),),
                        padding: EdgeInsets.all(5),
                        decoration: new BoxDecoration(
                          color: Colors.indigo.shade400,
                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child: Text("Mobile Developer", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200
                        )),
                        padding: EdgeInsets.all(5),
                        decoration: new BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Java", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200
                        ),),
                        padding: EdgeInsets.all(5),
                        decoration: new BoxDecoration(
                          color: Colors.green.shade700,
                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child: Text("SQL", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200
                        )),
                        padding: EdgeInsets.all(5),
                        decoration: new BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        ),
                      ),SizedBox(width: 15,),
                      Container(
                        child: Text("UI/UX designer", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200
                        )),
                        padding: EdgeInsets.all(5),
                        decoration: new BoxDecoration(
                          color: Colors.deepOrange.shade900,
                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0, left: 20, right: 20),
              child: Text("Links Shared", style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: linksData.map((value) => Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Container(
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color.fromARGB(255,21,23,28),),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          value["image"]!),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Text(value["title"]!, maxLines: 2,style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  width: MediaQuery.of(context).size.width * 0.65,
                                  padding: EdgeInsets.only(left: 15),
                                ),
                                Container(
                                  child: Text(value["link"]!, maxLines: 1, style: TextStyle(
                                    color: Colors.grey,
                                    overflow: TextOverflow.clip,
                                    fontSize: 12
                                  ),
                                  ),
                                  width: MediaQuery.of(context).size.width * 0.65,
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
