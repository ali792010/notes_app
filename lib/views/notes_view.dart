import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(shape: const CircleBorder(side: BorderSide()), backgroundColor: Color(0xff55EDDA), 
       onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          context: context, builder: (context){
          return AddNotesBottomSheet();
        });
       },child: Icon(Icons.add,color: Colors.black,),),
      body: NotesViewBody(),
    );
  }
}

