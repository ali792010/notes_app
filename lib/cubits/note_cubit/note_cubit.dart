import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/note_cubit/note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constant.dart';

class NoteCubit extends Cubit<NotesState>{
  NoteCubit() : super(NotesInitial());


 List<NoteModel>? notes ;
  fetchAllNotes()
  {

   
  
  var noteBox = Hive.box<NoteModel>(kNotesBox);

    notes = noteBox.values.toList();

 
}  

  }
