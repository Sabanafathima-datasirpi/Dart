import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Large screen layout (e.g., laptop)
            return Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green, 
                    child: ChatContactList(),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.yellow, 
                    child: ChatWindow(),
                  ),
                ),
              ],
            );
          } else {
            // Small screen layout (e.g., mobile phone)
            return ChatContactList();
          }
        },
      ),
    );
  }
}


class ChatContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Text('First page'),
    );
  }
}

class ChatWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Center(
      child: Text('Expanded page'),
    );
  }
}
