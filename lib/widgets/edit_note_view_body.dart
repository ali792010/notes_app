import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget { 
    EditNoteViewBody({super.key,this.note});

  NoteModel? note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? eTitle,eSubtitle;

   @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
               
                width: double.infinity,
                child: Row(
                  children: [
                    Text('Edit Note',style: TextStyle(fontSize: 32,fontFamily: 'Pacifico'),),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                            widget.note?.title = eTitle ?? widget.note!.title;
                      widget.note?.subTitle = eSubtitle ?? widget.note!.subTitle;
                      widget.note?.save();
                         BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                      },
                      child: Container( height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(15),
                      ) ,child: Icon(Icons.check),),
                    ),
                  ],
                ),
              ),
            ),
         
                SizedBox(height: 50),
                CustomTextField(hint: 'Title', maxL: 1, 
                onChanged: (value) {
                  eTitle = value;
                },
                ),
                SizedBox(height: 16),
                CustomTextField(hint: 'Content', maxL: 5,    
                onChanged: (value) {
                  eSubtitle = value;
                },            
                ),
                
          ],
        ),
      );
  }
}
