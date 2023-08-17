
import 'package:flutter/foundation.dart';
import 'storylist.dart';

class StoryState extends ChangeNotifier {
  bool isFavorite = false;

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
  
  
  
  List<Story> favoriteStories = [];

  void toggleFavorites(Story story) {
    story.isFavorite = !story.isFavorite;

    if (story.isFavorite) {
      favoriteStories.add(story);
    } else {
      favoriteStories.remove(story);
    }

    notifyListeners();
  }
}

   



