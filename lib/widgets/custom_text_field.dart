import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hint,required this.maxL,this.onSaved});
 
 final String hint;
 final int maxL;
 void Function(String?)? onSaved;
   @override
  Widget build(BuildContext context) {

    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if (value?.isEmpty ?? true){
            return 'Field is required';
        }else {
          return null;
        }
      },
      textAlignVertical: TextAlignVertical.center,
      cursorColor: kPrimaryColor,
      maxLines: maxL,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
      ),
    );
  }

   OutlineInputBorder buildBorder([color]) {
     return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white),
      );
   }
}
