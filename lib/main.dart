import 'package:bottom_navigation_bar_ex1/first_page.dart';
import 'package:bottom_navigation_bar_ex1/second_page.dart';
import 'package:bottom_navigation_bar_ex1/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  void bottomnavigationBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];
  List screens = [
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
          centerTitle: true,
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          type: BottomNavigationBarType.shifting,
          onTap: bottomnavigationBar,
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded),
              label: "home",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time_sharp),
                label: "home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "home",
                backgroundColor: Colors.green),
          ],
        ),
      ),
    );
  }
}
