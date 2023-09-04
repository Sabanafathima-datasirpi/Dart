import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Header section',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _peopleData = List.generate(1000, (index) {
    return {"name": "Person \#$index", "age": Random().nextInt(90) + 10};
  });

  Widget _listItem(index) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: Text(index.toString(), style: const TextStyle(fontSize: 18)),
        title: Text(
          _peopleData[index]['name'].toString(),
          style: const TextStyle(fontSize: 18),
        ),
        trailing: Text(
          _peopleData[index]['age'].toString(),
          style: const TextStyle(fontSize: 18, color: Colors.purple),
        ),
      ),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black26))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Header section'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              leading: Text('ID'),
              title: Text('Name'),
              trailing: Text('Age'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.blue, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Info Section',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
                Text(
                  'This is the list of people data.',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white, 
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.green, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description Section',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
                Text(
                  'The data contains Id, name and age of the people.',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _peopleData.length,
              itemBuilder: (_, index) {
                return _listItem(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
