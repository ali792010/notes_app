import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFCCA75),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter tips',style: TextStyle(color: Colors.black),),
              subtitle: Text('Built your career with new Note kkhkjk kjkjkj kjkjkjk kjkj kjkj',style: TextStyle(color: Colors.black.withOpacity(0.5)),),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,)),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
               child: Text(' May 10 10',style: TextStyle(color: Colors.black.withOpacity(0.5)),),
             ),
          ],
        ),
      ),
    );
  }
}
