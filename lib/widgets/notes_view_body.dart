import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 24),
  child: Column(
    children: [
        SizedBox(height: 10),
            CustomAppBar(),
        SizedBox(height: 5),
            NoteItem(),
    ],
  ),
);
  }
}

