import 'package:flutter/material.dart';
import 'package:flutter_project/provider2/second.dart';
import 'package:flutter_project/themedata/theme_provider.dart';
import 'list_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ThemeProvider _themeManager;

  @override
  void initState() {
    super.initState();
    _themeManager = Provider.of<ThemeProvider>(context, listen: false);
    _themeManager.addListener(themeListener);
  }

  void themeListener() {
    if (mounted) {
      setState(() {}); // Update UI when theme changes
    }
  }

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number List"),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return Switch(
                value: themeProvider.themeMode == ThemeMode.dark,
                onChanged: (newValue) {
                  themeProvider.toggleTheme(newValue);
                },
              );
            },
          ),
        ],
      ),

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

          Expanded( // ✅ Prevents overflow
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
