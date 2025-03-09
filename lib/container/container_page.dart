import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("container")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              color: Colors.green,
              child: Center(child: Text("item 1")),
            ),
            Container(
              height: 50,
              color: Colors.yellowAccent,
              child: Center(child: Text("item 2")),
            ),
            Container(
              height: 50,
              color: Colors.red,
              child: Center(child: Text("item 3")),
            ),
          ],
        ),
      ),
    );
  }
}
