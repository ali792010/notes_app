import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});
   @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
        
          SizedBox(height: 15),
          CustomTextField(hint: 'Title',maxL: 1,),
          SizedBox(height: 5),
          CustomTextField(hint: 'Content', maxL: 5),
          SizedBox(height: 50,),
          CustomButton(),
           SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

