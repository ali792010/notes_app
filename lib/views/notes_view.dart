import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NotesViewBody(),
        ],
      ),
    );
  }
}
