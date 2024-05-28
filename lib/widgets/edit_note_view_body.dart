import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
                Container(child: CustomAppBar(title: 'Edit Note',icon: Icons.check,)),
          ],
        ),
      );
  }
}
