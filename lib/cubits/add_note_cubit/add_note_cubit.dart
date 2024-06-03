import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constant.dart';

class AddNoteCubit extends Cubit<AddNotesState>{
  AddNoteCubit() : super(AddNotesInitial());

  Color color = Color(0xffFFBC00);

  addNote(NoteModel note) async
  {
    note.color = color.value;
       emit(AddNotesLoading());
    try {
   
  var noteBox = Hive.box<NoteModel>(kNotesBox);

     await noteBox.add(note);

       emit(AddNotesSuccess());
}  catch (e) {
  emit(AddNotesFailure(e.toString()));
}
  }
}