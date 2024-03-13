
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState(){
    return new _HomePage();
  }
}

class _HomePage extends State<HomePage>{
  
  int currentPageIndex = 0;

  @override
  Widget build( BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.tealAccent,
      // appBar: new AppBar(
      //   title: new Text("App Bar"),
      // ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.search_off_rounded)),
            label: 'Recherche',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.favorite_border_rounded),
            ),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.supervised_user_circle_rounded),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}