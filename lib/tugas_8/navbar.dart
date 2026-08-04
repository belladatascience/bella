import 'package:bella/day_11/routing.dart';
import 'package:bella/day_14/tugas7flutter.dart';
import 'package:bella/tugas_8/about.dart';
import 'package:flutter/material.dart';

class Tugas8flutter extends StatefulWidget {
  const Tugas8flutter({super.key});

  @override
  State<Tugas8flutter> createState() => _Tugas8flutterState();
}

class _Tugas8flutterState extends State<Tugas8flutter> {
  int _selectedBottom = 0;

  final List<Widget> _widgetOptions = [
    // Center(child: Text('Home')),
    // Center(child: Text('Info')),
    Tugas7flutter(),
    AboutTugas8(),
    RoutingDay11(),
  ];

  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
        ],
      ),
      body: _widgetOptions.elementAtOrNull(_selectedBottom),
    );
  }
}
