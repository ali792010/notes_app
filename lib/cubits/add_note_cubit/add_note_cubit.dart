import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constant.dart';

class AddNoteCubit extends Cubit<AddNotesState>{
  AddNoteCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async
  {
    emit(AddNotesLoading());
    try {
  var noteBox = Hive.box<NoteModel>(kNotesBox);
  emit(AddNotesSuccess());
     await noteBox.add(note);
}  catch (e) {
  AddNotesFailure(e.toString());
}
  }
}