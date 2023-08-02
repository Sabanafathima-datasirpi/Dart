import 'package:first_project/story.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String genre;

  Content({required this.genre});
  Future<List<String>> fetchBooksByGenre(String genre) async {
    await Future.delayed(Duration(seconds: 2));
     return List.generate(5, (index) => 'Book #${index + 1} in $genre');
  }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: FutureBuilder<List<String>>(
        future: fetchBooksByGenre(genre),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While the data is being fetched, show a loading indicator.
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // If there's an error, display an error message.
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // If the data is available, display the list of books.
            final books = snapshot.data!;
            return ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  title: Text(book),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Stories(),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}