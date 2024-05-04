import 'package:flutter/material.dart';
import 'package:flutter_application_4/ListView.dart';
import 'package:flutter_application_4/grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int selected = 0;
List listw = [const Page1(), const Page2()];
String _title = "ListView";

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          _title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              if (value == 0) {
                _title = "ListView";
              } else {
                _title = "GridView";
              }
              selected = value;
            });
          },
          backgroundColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list), label: "ListView"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_sharp), label: "GridView")
          ]),
      body: Container(
        child: listw.elementAt(selected),
      ),
    );
  }
}
