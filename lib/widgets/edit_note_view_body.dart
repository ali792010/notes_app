import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
                Container(child: CustomAppBar(title: 'Edit Note',icon: Icons.check,)),
                SizedBox(height: 50),
                CustomTextField(hint: 'Title', maxL: 1),
                SizedBox(height: 16),
                CustomTextField(hint: 'Content', maxL: 5),
                
          ],
        ),
      );
  }
}
