import 'dart:convert';
import 'package:flutter/material.dart';
import 'task_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [];
  bool isLoading = true; // Initially set to true for loading indicator

  @override
  void initState() {
    super.initState();
    fetchTasks(); // Start fetching tasks when the screen is initialized
  }

  Future<void> fetchTasks() async {
    setState(() {
      isLoading = true; // Set isLoading to true when the task fetching starts
    });

    final url = "https://api.nstack.in/v1/todos?page=1&limit=10";
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      setState(() {
        items = jsonResponse['items']; // Update the list of items
        isLoading = false; // Set isLoading to false after the data is fetched
      });
    } else {
      setState(() {
        isLoading =
            false; // Set isLoading to false if there's an error in fetching
      });
      // Optionally, show an error message
      print("Failed to load tasks");
    }
  }

  Future<void> updateTaskCompletion(
    String taskId,
    bool isCompleted,
    String title,
    String description,
  ) async {
    final url =
        "https://api.nstack.in/v1/todos/$taskId"; // Ensure the URL is correct.
    final uri = Uri.parse(url);

    final body = {
      "title": title,
      "description": description,
      "is_completed": isCompleted, // Only send the "is_completed" field
    };

    try {
      final response = await http.put(
        uri,
        headers: {"Content-Type": "application/json"},
        body: json.encode(body),
      );
    } catch (e) {
      print("Error occurred: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        title: Center(
          child: Text(
            "Todo App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body:
          isLoading
              ? Center(
                child: CircularProgressIndicator(),
              ) // Show loading indicator while fetching
              : RefreshIndicator(
                onRefresh: fetchTasks, // Pull-to-refresh functionality
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final task = items[index];
                    final taskId = task['_id'];

                    if (taskId == null) {
                      return Container(); // If taskId is null, skip rendering
                    }

                    return ListTile(
                      leading: Checkbox(
                        activeColor: Colors.black,
                        value: task['is_completed'],
                        onChanged: (bool? value) {
                          if (value != null) {
                            setState(() {
                              // Toggle the 'is_completed' value when checkbox is changed
                              task['is_completed'] = value;
                            });

                            // Call the update method to update the backend
                            updateTaskCompletion(
                              taskId,
                              value,
                              items[index]['title'],
                              items[index]['description'],
                            );
                          }
                        },
                      ),
                      title: SelectableText(
                        
                          task['title'] ?? "Untitled Task",
                          style: TextStyle(
                            decoration:
                                task['is_completed']
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                            decorationColor:
                                task['is_completed'] ? Colors.red : Colors.white,
                            decorationThickness: task['is_completed'] ? 2.0 : 0.0,
                            color:
                                task['is_completed'] ? Colors.red : Colors.white,
                            fontSize: 20,
                            fontWeight:
                                task['is_completed']
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        ),
                      
                      subtitle: Text(
                        task['description'] ?? "No description",
                        style: TextStyle(
                          decoration:
                              task['is_completed']
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                          decorationColor:
                              task['is_completed']
                                  ? const Color.fromARGB(255, 182, 102, 98)
                                  : const Color.fromARGB(255, 90, 89, 89),
                          decorationThickness: task['is_completed'] ? 2.0 : 0.0,
                          color:
                              task['is_completed']
                                  ? const Color.fromARGB(255, 212, 127, 121)
                                  : const Color.fromARGB(255, 66, 65, 65),
                          fontSize: 20,
                          fontWeight:
                              task['is_completed']
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () async {
                          final deleteResponse = await deleteTask(taskId);
                          if (deleteResponse) {
                            setState(() {
                              items.removeAt(
                                index,
                              ); // Remove the task from the list
                            });
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => TaskPage(
                    onTaskAdded: () {
                      fetchTasks(); // Refresh task list after adding a task
                    },
                  ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<bool> deleteTask(String taskId) async {
    final url = "https://api.nstack.in/v1/todos/$taskId";
    final uri = Uri.parse(url);

    final response = await http.delete(uri);

    if (response.statusCode == 200) {
      return true; // Task deleted successfully
    } else {
      // Handle error
      print("Failed to delete task");
      return false;
    }
  }
}
