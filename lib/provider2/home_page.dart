import 'package:flutter/material.dart';
import 'package:flutter_project/provider2/second.dart';
import 'list_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number List")),

      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()), // ✅ Fixed navigation
              );
            },
            child: Text("Go to Second Page"),
          ),
          
          Expanded( // ✅ Fix Overflow issue
            child: Consumer<ListProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                  itemCount: provider.numbers.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Number: ${provider.numbers[index]}"),
                      leading: Icon(Icons.numbers),
                      trailing: Icon(Icons.arrow_forward),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ListProvider>().add(); // ✅ Update provider state
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor, // ✅ Apply primary theme color
      ),
    );
  }
}
