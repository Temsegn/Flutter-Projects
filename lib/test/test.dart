import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({super.key});

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final TextEditingController _controller = TextEditingController();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("container")),
        body: Container(
           margin: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Welcome  $name"),
               TextField(
                  controller: _controller,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mascot Name',
                  suffixIcon:IconButton(onPressed: (){
                    _controller.clear();
                  }, icon: Icon(Icons.clear))
                    
                  
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    name = _controller.text;
                  });
                },
                color: Colors.blue,
                padding: EdgeInsets.all(20),
                child: Text("Post"),
              ),
            ],
          ),
           
        ),
      ),
    );
  }
}
