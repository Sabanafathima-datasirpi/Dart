import 'package:first_project/story.dart';
import 'package:first_project/story_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';
import 'main.dart';
import 'storylist.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final favoriteState = Provider.of<StoryState>(context);

    void onItemTap(int index) {
      setState(() {
        selectedIndex = index;
      });
      if (index == 0) {
        Navigator.push(
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
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavoritesPage(favoriteStories: favoriteState.favoriteStories),
          ),
        );
      }
    }

    Story myStory = Story(
      title: 'THE WOLF AND THE LAMB',
      imageUrl: 'assets/wolf.jpg',
     
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Books List'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-vector/zoo-keeper-with-animals_1308-20009.jpg?w=740&t=st=1691669924~exp=1691670524~hmac=21c10cabef75d8520c4509a36cb2f18268f64270576b41f3fdf98234e3217665',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 80,
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/wolf.jpg'),
                      radius: 60,
                    ),
                  ),
                  title: Text('THE WOLF AND THE LAMB'),
                  textColor: Colors.white,
                  trailing: Consumer<StoryState>(
                    builder: (context, favoriteState, child) {
                      return IconButton(
                        onPressed: () {
                          favoriteState.toggleFavorites(myStory); 
                        },
                        icon: Icon(
                          myStory.isFavorite ? Icons.favorite : Icons.favorite_outline,
                          color: myStory.isFavorite ? Colors.red : null,
                        ),
                      );
                    },
                  ),
                  
                  iconColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Stories(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Card(
color: Colors.transparent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15),
),
elevation: 2,
child: Container(
decoration: BoxDecoration(
border: Border.all(
color: Colors.white,
width: 4,
),
borderRadius: BorderRadius.circular(15),
),
child: ListTile(
leading: Container(
width: 60,
height: 80,
alignment: Alignment.center,
child: CircleAvatar(
backgroundImage: AssetImage('assets/lion.jpg'),
radius: 60,
),
),
title: Text('NEVER TELL A LIE'),
textColor: Colors.white,
trailing: Icon(Icons.favorite_outline),
iconColor: Colors.white,
contentPadding: EdgeInsets.all(15),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => Stories(),
),
);
},
),
)),
Card(
color: Colors.transparent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15),
),
elevation: 2,
child: Container(
decoration: BoxDecoration(
border: Border.all(
color: Colors.white,
width: 4,
),
borderRadius: BorderRadius.circular(15),
),
child: ListTile(
leading: Container(
width: 60,
height: 80,
alignment: Alignment.center,
child: CircleAvatar(
backgroundImage: AssetImage('assets/lion.jpg'),
radius: 60,
),
),
title: Text('THE FOX AND THE CRAB'),
textColor: Colors.white,
trailing: Icon(Icons.favorite_outline),
iconColor: Colors.white,
contentPadding: EdgeInsets.all(15),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => Stories(),
),
);
},
),
)),
Card(
color: Colors.transparent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15),
),
elevation: 2,
child: Container(
decoration: BoxDecoration(
border: Border.all(
color: Colors.white,
width: 4,
),
borderRadius: BorderRadius.circular(15),
),
child: ListTile(
leading: Container(
width: 60,
height: 80,
alignment: Alignment.center,
child: CircleAvatar(
backgroundImage: AssetImage('assets/wolf.jpg'),
radius: 60,
),
),
title: Text('THE HONEST WOODCUTTER'),
textColor: Colors.white,
trailing: Icon(Icons.favorite_outline),
iconColor: Colors.white,
contentPadding: EdgeInsets.all(15),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => Stories(),
),
);
},
),
)),
Card(
color: Colors.transparent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15),
),
elevation: 2,
child: Container(
decoration: BoxDecoration(
border: Border.all(
color: Colors.white,
width: 4,
),
borderRadius: BorderRadius.circular(15),
),
child: ListTile(
leading: Container(
width: 60,
height: 80,
alignment: Alignment.center,
child: CircleAvatar(
backgroundImage: AssetImage('assets/wolf.jpg'),
radius: 60,
),
),
title: Text('THE FARMER AND HIS LAZY SONS'),
textColor: Colors.white,
trailing: Icon(Icons.favorite_outline),
iconColor: Colors.white,
contentPadding: EdgeInsets.all(15),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => Stories(),
),
);
},
),
)),
])),
bottomNavigationBar: BottomNavigationBar(
items: const <BottomNavigationBarItem>[
BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
BottomNavigationBarItem(
icon: Icon(Icons.auto_awesome), label: 'Genres'),
BottomNavigationBarItem(
icon: Icon(Icons.favorite), label: 'Favorites')
],
currentIndex: selectedIndex,
onTap: onItemTap,
),
);
}
}
          
        
      