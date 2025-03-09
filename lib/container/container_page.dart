import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("container")),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(20), // Adds margin outside the container
                padding: EdgeInsets.all(
                  20,
                ), // Adds padding inside the container
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(2, 2), // Adds shadow
                    ),
                  ],
                ),
                alignment: Alignment.center, // Centers the child
                child: Text("Hello, Flutter!"),
              ),
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(20), // Adds margin outside the container
                padding: EdgeInsets.all(
                  20,
                ), // Adds padding inside the container
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(2, 2), // Adds shadow
                    ),
                  ],
                ),
                alignment: Alignment.center, // Centers the child
                child: Text("Hello, Flutter!"),
              ),
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(20), // Adds margin outside the container
                padding: EdgeInsets.all(
                  20,
                ), // Adds padding inside the container
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(2, 2), // Adds shadow
                    ),
                  ],
                ),
                alignment: Alignment.center, // Centers the child
                child: Text("Hello, Flutter!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
