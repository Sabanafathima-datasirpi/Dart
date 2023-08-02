import 'package:first_project/my_creation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => MyHomePage(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Story World'),
      ),
      body: Container(
        height: height,
        width: width,
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
                    fontSize: 60,
                    fontFamily: 'Precious',
                    color: Color.fromARGB(255, 240, 240, 240)),
              ),
              Text(
                "Discover the magic of stories",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              ElevatedButton(
                child: Text(
                  'View Genres',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}
