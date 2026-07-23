import 'package:flutter/material.dart';

class LayoutingDay6 extends StatelessWidget {
  const LayoutingDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: 
      const Color.fromARGB(255, 187, 128, 107), 
      title: Text("LayoutingDay5"),
      centerTitle: true,
      actions: [Text("1"), Text("2")],
      leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children:  [
        Text ("Hello Batch 7"),
        SizedBox(height: 40),
        Text ("Hello Batch 7"),
        SizedBox(height: 20),

        Icon(Icons.star),
        Text("Hello Batch 7"),
        Row(
          children: [
            Icon(Icons.star),
            SizedBox(width: 20),
            Text("Hello Batch 7"),
          ],
        ),

        Row(children: [Icon(Icons.star), Text("Hello Batch 7")]),
        SizedBox(
          height: 50,
          child: Row(children: [Icon(Icons.star), Text("Hello Batch 7")])
        ),
          
        Row(children: [Icon(Icons.star), Text("Di bawah ini Padding")],
        ),
        //Penggunaan Paddding
        Padding(
          padding: const EdgeInsets.only(left:24),
          child: Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
          ]
          ),
        ),
      
      ],
    ));
  }
}