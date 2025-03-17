import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class  ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive + Provider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the count
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text( 
                  'Count: ${counter.count}',
                  style: TextStyle(fontSize: 24), 
                );
              },
            ),
            SizedBox(height: 20),
            // Increment button
            ElevatedButton(
              onPressed: () {
                context.read<CounterModel>().increment();
              },
              child: Text('Increment'),
            ),
            SizedBox(height: 10),
            // Decrement button
            ElevatedButton(
              onPressed: () {
                context.read<CounterModel>().decrement();
              },
              child: Text('Decrement'),
            ), 
          ],
        ),
      ),
    );
  }
}