import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget { 
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subtitle;
   @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
            children: [
            SizedBox(height: 15),
            CustomTextField(hint: 'Title',maxL: 1,
            onSaved: (value) {
              title = value;
            },
            ),
            SizedBox(height: 5),
            CustomTextField(hint: 'Content', maxL: 5,
            onSaved: (value){
              subtitle =value;
            },
            ),
            SizedBox(height: 50,),
            CustomButton(
              ontap: (){
                if (formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {  });
                }
              },
            ),
             SizedBox(height: 20),
            ],
          ),
    );
  }
}