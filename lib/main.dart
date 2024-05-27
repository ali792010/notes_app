import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: NotesView(),
      );
  }
}
