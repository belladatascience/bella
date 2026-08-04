import 'package:flutter/material.dart';

class AboutTugas8 extends StatefulWidget {
  const AboutTugas8({super.key});

  @override
  State<AboutTugas8> createState() => _AboutTugas8State();
}

class _AboutTugas8State extends State<AboutTugas8> {
  @override
  Widget build(BuildContext context) {
    // ✅ Menggunakan Scaffold
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff90B800),
        title: const Text("About"),
        centerTitle: true,
        // actions: const [
        //   // Padding(
        //   //   padding: EdgeInsets.symmetric(horizontal: 8.0),
        //   //   child: Center(child: Text("1")),
        //   // ),
        //   // // Padding(
        //   //   padding: EdgeInsets.symmetric(horizontal: 8.0),
        //   //   child: Center(child: Text("2")),
        //   // ),
        // ],
        // leading: const Icon(Icons.arrow_back),
      ),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 20),

            Text(
              "CASHIER LATTE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Cashier Latte adalah aplikasi yang memberikan kemudahan agar penjual dapat melakukan transaksi lebih mudah, rapih, dan aman",
              ),
            ),
            SizedBox(height: 20),
            Text("Bella Gita Asmara"),
            SizedBox(height: 20),
            Text("Versi Aplikasi 1.0.0"),
          ],
        ),
      ),
    );
  }
}
