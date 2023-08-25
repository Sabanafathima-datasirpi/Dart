import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Task {
  final int id;

  final String text;

  Task(this.id, this.text);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('To-Do List with Reordering'),
        ),
        body: TaskList(),
      ),
    );
  }
}

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Task> tasks = [];

  final TextEditingController taskController = TextEditingController();

  int taskIdCounter = 1;

  void _addTask(String taskText) {
    final newTask = Task(taskIdCounter, taskText);

    taskIdCounter++;

    setState(() {
      tasks.add(newTask);

      taskController.clear();
    });
  }

  void removeTask(int id) {
    setState(() {
      tasks.removeWhere((task) => task.id == id);
    });
  }

  void reorderTasks(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    final task = tasks.removeAt(oldIndex);

    tasks.insert(newIndex, task);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Task order changed'),
      ),
    );
  }

  @override
  void dispose() {
    taskController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => onBackButtonPressed(context),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: taskController,
                      decoration: InputDecoration(labelText: 'Enter a task'),
                      onSubmitted: (taskText) {
                        if (taskText.trim().isNotEmpty) {
                          _addTask(taskText);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReorderableListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];

                  final key = Key(task.id.toString());

                  return Dismissible(
                    key: key,
                    onDismissed: (direction) {
                      removeTask(task.id);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Task "${task.text}" removed'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              setState(() {
                                tasks.insert(index, task);
                              });
                            },
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      key: key,
                      title: Text(task.text),
                    ),
                  );
                },
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    reorderTasks(oldIndex, newIndex);
                  });
                },
              ),
            ),
          ],
        ));
  }

  Future<bool> onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App?'),
          content: Text('Are you sure?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );

    return exitApp ?? false;
  }
}
