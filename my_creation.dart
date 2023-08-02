import 'package:first_project/project.dart';
import 'package:flutter/material.dart';

class MyCreation extends StatefulWidget {
  const MyCreation({super.key});

  @override
  State<MyCreation> createState() => _MyCreationState();
}



class _MyCreationState extends State<MyCreation> {

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
    return MaterialApp(
      theme: iconBool? darkTheme: lightTheme,
    home:Scaffold(
        appBar: AppBar(
          title: const Text('Genres'),
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
              title: Text(genres[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Content(genre: genres[index])));
              },
            );
          },
        )
    )
        );
  }
}
