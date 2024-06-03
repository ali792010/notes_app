import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print('failed ${state.errMessage}');
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding:  EdgeInsets.only(left: 16,right: 16,top: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
