import 'package:flutter/material.dart';
import 'package:notes_app/home_page.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
  }
}
