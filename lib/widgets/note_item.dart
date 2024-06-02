import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.no});
 final NoteModel no;
   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context){ return EditNoteView();} ));
        // Navigator.push.(context, MaterialPageRoute(builder: (context)
        // {
        //   return EditNoteView();
        // }
        // ));
      },
      child: Container(
        decoration: BoxDecoration(
          color:  Color(0xffff85855),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(no.title,style: TextStyle(color: Colors.black),),
                subtitle: Text(no.subTitle,style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                trailing: IconButton(onPressed: (){ no.delete();}, icon:const Icon(Icons.delete,color: Colors.black,)),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                 child: Text(no.date,style: TextStyle(color: Colors.black.withOpacity(0.5)),),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
