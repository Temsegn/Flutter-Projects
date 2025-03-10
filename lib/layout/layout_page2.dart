import 'package:flutter/material.dart';

class LayoutPage2 extends StatelessWidget {
  const LayoutPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Layout with Rounded Corners")),
        body: Container(
          color: const Color.fromARGB(255, 163, 127, 166),
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 110, 59, 117),
                            borderRadius: BorderRadius.circular(20), // Rounded corners
                          ),
                          margin: const EdgeInsets.only(bottom: 10),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 177, 97, 176),
                            borderRadius: BorderRadius.circular(20), // Rounded corners
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 192, 96, 209),
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}