import 'package:flutter/material.dart';

import 'storylist.dart'; // Import the Story class

class FavoritesPage extends StatelessWidget {
  final List<Story> favoriteStories;

  const FavoritesPage({required this.favoriteStories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Stories'),
      ),
      body: ListView.builder(
        itemCount: favoriteStories.length,
        itemBuilder: (context, index) {
          Story story = favoriteStories[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(story.imageUrl),
            ),
            title: Text(story.title),
            // You can add more details or widgets as needed
          );
        },
      ),
    );
  }
}


