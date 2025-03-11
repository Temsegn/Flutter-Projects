import 'package:flutter/material.dart';
import 'list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),

      body: Consumer<ListProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            scrollDirection: Axis.horizontal, // ✅ Horizontal scrolling
            itemCount: provider.numbers.length,
            itemBuilder: (context, index) {
              return Container(
                width: 100, // Set width for horizontal items
                child: ListTile(title: Text(" ${provider.numbers[index]}")),
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ListProvider>().add(); // ✅ Update provider state
        },
        child: Icon(Icons.add, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
