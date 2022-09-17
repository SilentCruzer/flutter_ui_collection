import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePlans extends StatefulWidget {
  const HomePlans({Key? key}) : super(key: key);

  @override
  State<HomePlans> createState() => _HomePlansState();
}

class _HomePlansState extends State<HomePlans> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return CarouselSlider(
      options: CarouselOptions(
        padEnds: false,
        height: 175.0,
        viewportFraction: 0.4,
        autoPlay: false,
        initialPage: 0,
        enableInfiniteScroll: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: true,
        aspectRatio: 2.0,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: planSlideData.map((card) {
        return Builder(builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 10),
              decoration: new BoxDecoration(
                  color: Color(int.parse(card["color"]!)),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 50),
                        child:card["icon"] == "1"
                            ? Icon(Icons.fitness_center,
                            color: Colors.white, size: 30)
                            : card["icon"] == "2"
                            ? Icon(Icons.snowshoeing_sharp,
                            color: Colors.orange, size: 30)
                            : Icon(Icons.food_bank,
                            color: Colors.blue, size: 30),
                      ),
                      SizedBox(height: 50,),

                      Text(card["title"]!, style: TextStyle(
                        color: card["icon"] == "1" ? Colors.white : Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 5,),
                      Text(card["stat"]!, style: TextStyle(
                        color: card["icon"] == "1" ? Colors.white : Colors.black,
                        fontSize: 12,
                      ),)
                    ],
                  )),
            ),
          );
        });
      }).toList(),
    );
  }
}
