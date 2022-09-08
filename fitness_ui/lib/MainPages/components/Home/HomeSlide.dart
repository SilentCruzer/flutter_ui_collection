import 'package:flutter/cupertino.dart';

class HomeSlide extends StatefulWidget {
  const HomeSlide({Key? key}) : super(key: key);

  @override
  State<HomeSlide> createState() => _HomeSlideState();
}

class _HomeSlideState extends State<HomeSlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Carousel"),
    );
  }
}
