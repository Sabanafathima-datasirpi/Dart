import 'package:first_project/my_creation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
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

  void onItemTap(int index) {
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
        titleTextStyle: TextStyle(fontSize: isSmallScreen ? 20 : 40 ),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome), label: 'Genres'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites')
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap, 
        selectedLabelStyle: TextStyle(fontSize: isSmallScreen ? 20 : 25,), 
        unselectedLabelStyle: TextStyle(fontSize: isSmallScreen ? 20 : 25,),
      ),
    );
  }
}
