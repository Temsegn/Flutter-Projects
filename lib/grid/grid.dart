import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridViewExample()));
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Example')),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: 18, // Number of items
          itemBuilder: (context, index) {
            return buildGridItem(index);
          },
        ),
      ),
    );
  }

  /// Function to create a Grid Item
  Widget buildGridItem(int index) {
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
    ];

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors[index % colors.length], // Cycles through colors
        border: Border.all(width: 5, color: Colors.white),
      ),
    );
  }
}
