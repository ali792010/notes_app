import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
 
   @override
  Widget build(BuildContext context) {
return  Padding(
  padding:  EdgeInsets.symmetric(horizontal: 24),
  child:  Column(
    children: [
      
         Container(child: CustomAppBar()),
        SizedBox(height: 5),
        // NoteItem(),
  Expanded(child: NotesListView()),
     
    ],
  ),
);
  }
}

