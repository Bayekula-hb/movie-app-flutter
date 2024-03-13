import "package:flutter/material.dart";
import "package:movie_app/pages/home.dart";

void main() {
  runApp(new MyApplication());
}

class MyApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      title: "Landa-Film",
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}