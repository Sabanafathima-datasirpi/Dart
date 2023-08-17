import 'package:flutter/material.dart';
import 'package:first_project/main.dart'; 
import 'package:first_project/project.dart'; 

class MyCreation extends StatefulWidget {
  const MyCreation({Key? key}) : super(key: key);

  @override
  State<MyCreation> createState() => _MyCreationState();
}

class _MyCreationState extends State<MyCreation> {
  int selectedIndex = 1; 
  List<Widget> options = <Widget>[
    Text('Home'),
    Text('Genres'),
    Text('Favorites'),
  ];
  static bool iconBool = false;
  static IconData iconLight = Icons.wb_sunny;
  static IconData iconDark = Icons.nights_stay;

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);

  final List<String> genres = [
    'assets/family.jpg',
    'assets/jungle.jpg',
    'assets/family.jpg',
    'assets/kingdom.jpg',
    'assets/jungle.jpg',
    'assets/jungle.jpg',
    'assets/family.jpg',
    'assets/kingdom.jpg',
  ];

  final List<String> genreTitles = [
    'Kids',
    'Jungle',
    'Family',
    'Bedtime',
    'Moral Stories',
    'Panchathanthira',
    'Comic',
    'Kingdom',
  ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Content(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width <= 600;
    return MaterialApp(
      theme: iconBool ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Genres'),
          titleTextStyle: TextStyle(fontSize: isSmallScreen ? 20 : 40),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    iconBool = !iconBool;
                  });
                },
                icon: Icon(iconBool ? iconDark : iconLight))
          ],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: genres.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Content(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
              
                  ),
                  elevation: 20, 
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          genres[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          genreTitles[index],
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_awesome), label: 'Genres'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites')
          ],
          currentIndex: selectedIndex,
          onTap: onItemTap,
          selectedLabelStyle: TextStyle(fontSize: isSmallScreen ? 20 : 25),
          unselectedLabelStyle: TextStyle(fontSize: isSmallScreen ? 20 : 25),
        ),
      ),
    );
  }
}
