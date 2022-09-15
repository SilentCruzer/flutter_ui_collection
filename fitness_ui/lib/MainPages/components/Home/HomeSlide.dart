import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSlide extends StatefulWidget {
  const HomeSlide({Key? key}) : super(key: key);

  @override
  State<HomeSlide> createState() => _HomeSlideState();
}

class _HomeSlideState extends State<HomeSlide> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex=0;
    return CarouselSlider(
      options: CarouselOptions(
        padEnds: false,
        height: 150.0,
        viewportFraction: 0.80,
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
      items: mainSlideData.map((card){
        return Builder(
            builder:(BuildContext context){
              return Container(
                height: MediaQuery.of(context).size.height*0.30,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.only(top: 20, right: 10),
                  decoration: new BoxDecoration(
                      color: Color(int.parse(card["color"]!)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: screenWidth * 0.3,
                          child: Image.asset(card["image"]!)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top:5, bottom: 5, left: 10, right: 10),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20.0))
                            ),
                            child: Text(card["type"]!, style: TextStyle(
                                fontSize: 12,
                              color: Colors.red
                            ),),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: screenWidth * 0.3,
                            child: Text(card["title"]!, style: TextStyle(
                              fontSize: 15,
                            ),),
                          ),
                          SizedBox(height: 5,),
                          Text( "Starts on: " + card["startDate"]!.toString(), style: TextStyle(
                              fontSize: 12,
                            color: Colors.grey
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
        );
      }).toList(),
    );
  }

}
