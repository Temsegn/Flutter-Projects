import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wrapper")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        child: Container(
           
          child: Row(
            children: [ 
              Image.network("https://images.unsplash.com/photo-1541963463532-d68292c34b19"),
              const SizedBox(width: 16), // Add some spacing
              Wrap(
                spacing: 8.0, // Horizontal space between children
                runSpacing: 8.0, // Vertical space between lines
                children: const [ 
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                  Chip(label: Text('Riverpod')),
                ],
              ),                                                                                                                                                                               
            ],
          ),
        ),
      ),
    );
  }
}