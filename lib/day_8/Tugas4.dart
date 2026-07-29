import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Registrasi & Katalog",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Form Registrasi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "Nama Pemesan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.note),
                hintText: "Nomor Antrian",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                hintText: "No. HP",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.numbers),
                hintText: "Jumlah Orderan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility),
                labelText: "Catatan Pesanan",
                hintText: "Waktu Order",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "List Makanan dan Minuman",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
              children: [
                _wilayahCard("Jakarta", "assets/images/Jakarta.jpg"),
                _wilayahCard("Bandung", "assets/images/Bandung.jpg"),
                _wilayahCard("Yogyakarta", "assets/images/yogyakarta.jpg"),
                _wilayahCard("Semarang", "assets/images/Semarang.jpg"),
                _wilayahCard("Lampung", "assets/images/Lampung.jpg"),
                _wilayahCard("Padang", "assets/images/Padang.jpg"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _wilayahCard(String nama, String assetPath) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(assetPath, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                255,
                235,
                219,
                4,
              ).withValues(alpha: 0.5),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Text(
              nama,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
