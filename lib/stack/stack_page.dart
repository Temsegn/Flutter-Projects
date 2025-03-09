import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  Color iconColor = Colors.white; // Initial color of the favorite icon

  void colorChanger() {
    setState(() {
      // Toggle the icon color between red and white
      iconColor = (iconColor == Colors.white) ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Stack and Container Example")),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                // Background Container
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  color: Colors.blueGrey,
                ),

                // Green Container
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                ),

                // Black Container
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.black,
                  ),
                ),

                // Amber Container with Favorite Icon
                Positioned(
                  top: 100, // Adjust position as needed
                  left: 100, // Adjust position as needed
                  child: GestureDetector(
                    onTap: colorChanger, // Change color when the amber box is tapped
                    child: Stack(
                      children: [
                        // Amber Box
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                        // Favorite Icon (Top-Right Corner of the Amber Box)
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(
                            Icons.favorite,
                            color: iconColor, // Use the dynamic color
                            size: 30, // Optional: Change icon size
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}