import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
 
   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return EditNoteView();
        }
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFCCA75),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text('Flutter tips',style: TextStyle(color: Colors.black),),
                subtitle: Text('Built your career with new Note kkhkjk kjkjkj kjkjkjk kjkj kjkj',style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete,color: Colors.black,)),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                 child: Text(' May 10 10',style: TextStyle(color: Colors.black.withOpacity(0.5)),),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
