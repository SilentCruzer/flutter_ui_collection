import 'package:fitness_ui/MainPages/Track.dart';
import 'package:flutter/material.dart';

import 'MainPages/Home.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Track(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade300,
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Icon(Icons.send), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.blueGrey.shade100,
        shape: CircularNotchedRectangle(),
        //shape of notch
        notchMargin: 5,
        //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: pageIndex == 0  ? Colors.blueGrey :Colors.blueGrey.shade200,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: pageIndex == 1  ? Colors.blueGrey :Colors.blueGrey.shade200,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.print,
                color: pageIndex == 2  ? Colors.blueGrey :Colors.blueGrey.shade200,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: pageIndex == 3  ? Colors.blueGrey :Colors.blueGrey.shade200,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
