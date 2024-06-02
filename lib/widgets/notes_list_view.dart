import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
     List<NoteModel> not   = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding:  EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
             itemCount: not.length,
            itemBuilder: (context, index) {
              
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: 5),
              child: NoteItem(
                no: not[index],
              ),
            );
          }),
        );
      },
    );
  }
}
