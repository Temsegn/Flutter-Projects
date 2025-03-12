import 'package:flutter/material.dart';
 

class GridViewCountExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.count Example')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(
              10,
              (index) => Container(
                padding: EdgeInsets.all(20),
                // margin: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blueGrey,width: 10),
                 color: Colors.blue,
                 ),
                child: Center(
                  child: Text('Item $index', style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
