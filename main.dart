import 'dart:async';

import 'package:flutter/material.dart';

 

void main() {

  runApp(MyApp());

}

 

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter StreamBuilder Example',

      home: FruitsListScreen(),

    );

  }

}

 

class FruitsListScreen extends StatefulWidget {

  @override

  _FruitsListScreenState createState() => _FruitsListScreenState();

}

 

class _FruitsListScreenState extends State<FruitsListScreen> {

  final StreamController<List<String>> _fruitsStreamController =

      StreamController<List<String>>();

  final List<String> _tasks = ["Apple", "Banana", "Cherry", "Date", "Fig"];

 

  @override

  void initState() {

    super.initState();

    _updateTasks(); // Initial update

  }

 

  void _updateTasks() {

    _fruitsStreamController.sink.add(_tasks.toList());

  }

 

  void _addTask(String task) {

    setState(() {

      _tasks.add(task);

      _updateTasks();

    });

  }

 

  void _removeTask(String fruit) {

    setState(() {

      _tasks.remove(fruit);

      _updateTasks();

    });

  }

 

  @override

  void dispose() {

    _fruitsStreamController.close();

    super.dispose();

  }

 

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Tasks List'),

      ),

      body: Center(

        child: StreamBuilder<List<String>>(

          stream: _fruitsStreamController.stream,

          initialData: [], // Provide an empty list as initial data

          builder: (context, snapshot) {

            if (snapshot.hasError) {

              return Text('Error: ${snapshot.error}');

            }

 

            // Check the connection state

            if (snapshot.connectionState == ConnectionState.waiting) {

              return CircularProgressIndicator();

            }

 

            final tasks = snapshot.data!;

 

            if (tasks.isEmpty) {

              return Text('No fruits available.');

            }

 

            return ListView.builder(

              itemCount: tasks.length,

              itemBuilder: (context, index) {

                final task = tasks[index];

                return ListTile(

                  title: Text(task),

                  trailing: IconButton(

                    icon: Icon(Icons.delete),

                    onPressed: () => _removeTask(task),

                  ),

                );

              },

            );

          },

        ),

      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {

          showDialog(

            context: context,

            builder: (BuildContext context) {

              TextEditingController textController = TextEditingController();

              return AlertDialog(

                title: Text('Add Task'),

                content: TextField(

                  controller: textController,

                  decoration: InputDecoration(

              hintText: 'Task title..',

            ),

                  onChanged: (text) {

                    // You can enable or disable the "Add" button here

                  },

                  onSubmitted: (text) {

                    if (text.isNotEmpty) {

                      _addTask(text);

                      Navigator.of(context).pop();

                    }

                  },

                ),

                actions: <Widget>[

                  TextButton(

                    child: Text('Add'),

                    onPressed: () {

                      final text = textController.text; // Get the text from the TextField

                      if (text.isNotEmpty) {

                        _addTask(text);

                        Navigator.of(context).pop();

                      }

                    },

                  ),

                ],

              );

            },

          );

        },

        child: Icon(Icons.add),

      ),

    );

  }

}