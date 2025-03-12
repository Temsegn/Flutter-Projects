import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridViewExample()));
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text('GridView Example')),
        body: Container(
          margin: EdgeInsets.all(10),
          child: GridView(
            
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columns
              crossAxisSpacing: 10, // Space between columns
              mainAxisSpacing: 10, // Space between rows
              childAspectRatio: 1, // Aspect ratio of each grid item
            ),
            children: [
              Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.purple),
              Container(color: Colors.yellow),
               Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.purple),
              Container(color: Colors.yellow),
               Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.purple),
              Container(color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
