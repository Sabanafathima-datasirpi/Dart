import 'package:first_project/my_creation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<void> main() async {
  await dotenv.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> options = <Widget>[
    Text('Home'),
    Text('Genres'),
    Text('Favorites'),
  ];

  void onItemTap(int index)  {
    setState(() {
      selectedIndex = index;
    });

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyCreation(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width <= 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Story World'),
        titleTextStyle: TextStyle(fontSize: isSmallScreen ? 20 : 40),
        actions: [
          IconButton(
            onPressed: () => showCommentDialog(),
            icon: Icon(Icons.comment),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-vector/cartoon-wood-game-design_1284-40202.jpg?w=740&t=st=1690883125~exp=1690883725~hmac=decdaaedf1377cf6623d10ea79d3f2d4e0831504905e34c37803593d114ed1e9'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WonderTales',
                style: TextStyle(
                  fontSize: isSmallScreen ? 40 : 60,
                  fontFamily: 'Precious',
                  color: Color.fromARGB(255, 240, 240, 240),
                ),
              ),
              Text(
                "Discover the magic of stories",
                style: TextStyle(fontSize: isSmallScreen ? 20 : 40, color: Colors.white),
              ),
              ElevatedButton(
                child: Text(
                  'View Genres',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 16 : 25,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCreation(),
                    ),
                  );
                },
              ),
              Center(
                child: Text(dotenv.env['API_URL'] ?? 'API_URL not found'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'Genres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
        selectedLabelStyle: TextStyle(
          fontSize: isSmallScreen ? 20 : 25,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: isSmallScreen ? 20 : 25,
        ),
      ),
    );
  }

  void showCommentDialog() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController commentController = TextEditingController();

        return AlertDialog(
          title: Text('Add a Comment'),
          content: TextField(
            controller: commentController,
            maxLines: null,
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                String commentText = commentController.text;
                if (commentText.isNotEmpty) {
                  postComment(commentText);
                  Navigator.pop(context);
                }
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  Future<void> postComment(String comment) async {
    final apiUrl = 'https://jsonplaceholder.typicode.com/posts'; // Replace with your server's comment API endpoint

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'comment': comment}),
      );

      if (response.statusCode == 201) {
        // Comment successfully submitted to the server
        print('Comment submitted: $comment');
      } else {
        // Error occurred during the POST request
        print('Failed to submit comment. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Error handling for any network or server issues
      print('Error submitting comment: $e');
    }
  }
}

  
