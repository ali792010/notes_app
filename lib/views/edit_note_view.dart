import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget { 
  NoteModel? note;

  EditNoteView({super.key,this.note});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
 note: note,
   
      ),
         
    );
  }
}
