import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MainPages/AllChats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Color.fromARGB(255, 32, 34, 42)
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
    const AllChats(),
    const AllChats(),
    const AllChats(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      extendBody: true,
      body: Container(
        child: pages[pageIndex],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomAppBar(
          color: Color.fromARGB(255,21,23,28),
          //bottom navigation bar on scaffold
          //shape of notch
          notchMargin: 5,
          //notche margin between floating button and bottom appbar
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20, left:20.0, right:20),
            child: Row(
              //children inside bottom appbar
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.message_outlined,
                    color: pageIndex == 0  ? Colors.green.shade200 :Colors.blueGrey.shade200,
                  ),
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.auto_graph_outlined,
                    color: pageIndex == 1  ? Colors.green.shade200 :Colors.blueGrey.shade200,
                  ),
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.all_inbox,
                    color: pageIndex == 2  ? Colors.green.shade200 :Colors.blueGrey.shade200,
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
                    color: pageIndex == 3  ? Colors.green.shade200 :Colors.blueGrey.shade200,
                  ),
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outlined,
                    color: pageIndex == 3  ? Colors.green.shade200 :Colors.blueGrey.shade200,
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
        ),
      ),
    );
  }
}
