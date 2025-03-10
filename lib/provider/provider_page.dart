import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
class ProviderPage extends StatelessWidget {
   ProviderPage({super.key});
   
   
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Stack and Container Example")),
        body: Column(
           children: [
                 Consumer<Counter>(builder: (context, counter, child) {
                  return Text('Count: ${counter.count}');
                },),
             ElevatedButton(onPressed: (){
               context.read<Counter>().increment();
             }, child: Text("Add"))
           ],
        )
      ),
    );
  }
}
