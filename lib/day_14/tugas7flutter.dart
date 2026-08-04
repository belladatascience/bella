import 'package:bella/day_14/DropdownButtontugas7.dart';
import 'package:bella/day_14/checkboxtugas7.dart';
import 'package:bella/day_14/showDatePickertugas7.dart';
import 'package:bella/day_14/showTimePickertugas7.dart';
import 'package:bella/day_14/switchtugas7.dart';
import 'package:bella/extension/navigator.dart';
import 'package:flutter/material.dart';

class Tugas7flutter extends StatefulWidget {
  const Tugas7flutter({super.key});

  @override
  State<Tugas7flutter> createState() => _Tugas7flutterState();
}

class _Tugas7flutterState extends State<Tugas7flutter> {
  int _selectedBottom = 0;
  final bool _isCheck = false;
  final bool _isOn = false;
  String? _selected;
  DateTime? _selectedTime;
  TimeOfDay? _selectedTimeOfDay;

  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Checkboxtugas7(),
    Switchtugas7(),
    Dropdownbuttontugas7(),
    Showdatepickertugas7(),
    Showtimepickertugas7(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Center(child: Text("Tugas7Flutter- Menu Input")),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Syarat & Ketentuan"),
              onTap: () {
                changeBottom(0);

                // ElevatedButton(
                //   onPressed: () async {
                //     final DateTime? picked = await showDatePicker(
                //       context: context,
                //       firstDate: DateTime(2021),
                //       lastDate: DateTime.now(),
                //       initialDate: DateTime.now(),
                //     );
                //     if (picked != null) {
                //       setState(() {
                //         _selectedTime = picked;
                //       });
                //     }
                //   },
                // );
              },
            ),

            ListTile(
              leading: Icon(Icons.architecture),
              title: Text("Mode Tampilan"),
              onTap: () {
                changeBottom(1);
              },
            ),

            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Kategori Produk"),
              onTap: () {
                changeBottom(2);
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Pilih Tanggal"),
              onTap: () {
                changeBottom(3);
              },
            ),

            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Atur Pengingat"),
              onTap: () {
                changeBottom(4);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAtOrNull(_selectedBottom),
    );
  }
}
