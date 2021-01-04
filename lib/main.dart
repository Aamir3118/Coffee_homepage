import 'package:CCD/Homep.dart';
import 'package:CCD/Order.dart';
import 'package:CCD/Settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int Myindex = 0;
  final List<Widget> children = [Homep(), Orderp(), Settingp()];
  void onTapped(int index) {
    setState(() {
      Myindex = index;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: children[Myindex],
      bottomNavigationBar:
          BottomNavigationBar(onTap: onTapped, currentIndex: Myindex, items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.star),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.shopping_cart),
          label: "Order",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.settings),
          label: "Settings",
        ),
      ]),
    );
  }
}
