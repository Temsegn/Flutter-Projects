import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For working with JSON
import 'home_page.dart';

class TaskPage extends StatefulWidget {
  final Function
  onTaskAdded; // Callback function to notify when a task is added

  TaskPage({super.key, required this.onTaskAdded});
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TextEditingController _taskController = TextEditingController();

  TextEditingController _descriptionController = TextEditingController();

  Future<void> submitHandler(BuildContext context) async {
    final title = _taskController.text;
    final description = _descriptionController.text;

    final body = {
      "title": title,
      "description": description,
      "is_completed": false,
    };
    final url = "https://api.nstack.in/v1/todos";
    final uri = Uri.parse(url);

    String jsonBody = json.encode(body);

    // Sending the POST request
    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
      }, // Set the content type to JSON
      body: jsonBody, // Include the body as JSON
    );

    if (response.statusCode == 201) {
      showSuccessMessage(context, true);
      widget.onTaskAdded();
      Navigator.pop(context);
    } else { 
      showSuccessMessage(context, false);
    }
  }

  void showSuccessMessage(BuildContext context, bool good) {
    final snackBar =
        good
            ? SnackBar(
              content: Text('Task added Successful!'),
              backgroundColor: Colors.green, // You can set background color
            )
            : SnackBar(
              content: Text('Something wrong!'),
              backgroundColor: Colors.red, // You can set background color
            );
    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("ADD TODO"))),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                label: Text("Taks"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                label: Text("Descriptions"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => submitHandler(context),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
