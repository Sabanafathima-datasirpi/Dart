import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Set the initial route
      onGenerateRoute: (settings) {
        // Define your routes and return corresponding widgets
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => HomeScreen());
          case '/second':
            return MaterialPageRoute(builder: (_) => SecondScreen());
          case '/third':
            return MaterialPageRoute(builder: (_) => ThirdScreen());
          default:
            // Handle unknown routes here (e.g., show an error page)
            return MaterialPageRoute(builder: (_) => NotFoundScreen());
        }
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when the button is pressed
            Navigator.of(context).pushNamed('/second');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the third screen when the button is pressed
            Navigator.of(context).pushNamed('/third');
          },
          child: Text('Go to Third Screen'),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the home screen when the button is pressed
            Navigator.of(context).pushNamed('/');
          },
          child: Text('Go Back to Home'),
        ),
      ),
    );
  }
}

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not Found'),
      ),
      body: Center(
        child: Text('Page not found. Please check the URL.'),
      ),
    );
  }
}
