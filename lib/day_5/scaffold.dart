import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: 
      const Color.fromARGB(255, 187, 128, 107), 
      title: Text("Hello Batch7"),
      centerTitle: true,
      actions: [Text("1"), Text("2")],
      leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children:  [
        Text ("Hello Batch 7"),
        Text ("Hello Batch 7"),
        Text ("Hello Batch 7"),
        ],
      ),
    );
  }
}