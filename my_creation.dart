import 'package:first_project/main.dart';
import 'package:first_project/project.dart';
import 'package:flutter/material.dart';

class MyCreation extends StatefulWidget {
  const MyCreation({super.key});

  @override
  State<MyCreation> createState() => _MyCreationState();
}



class _MyCreationState extends State<MyCreation> {
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

    if (index == 0) {
      Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    }
  }

static bool iconBool = false;
static IconData iconLight = Icons.wb_sunny;
static IconData iconDark = Icons.nights_stay;

static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
  );

static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);


  final List<String> genres = [
    'Action and Adventure',
    'Comics',
    'Mystery',
    'Fantasy',
    'Historical Fiction',
    'Horror',
    'Sci-Fi',
    'Short Stories'
  ];
  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width <= 600;
    return MaterialApp(
      theme: iconBool? darkTheme: lightTheme,
    home:Scaffold(
        appBar: AppBar(
          title: const Text('Genres'),
          titleTextStyle: TextStyle(fontSize: isSmallScreen ? 20 : 40 ),
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
        body: ListView.builder(
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(genres[index],),
              titleTextStyle:TextStyle(fontSize: isSmallScreen ? 20 : 25,color: Colors.black),
              
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Content(genre: genres[index])));
              },
            );
          },
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
    )
        );
  }
}
