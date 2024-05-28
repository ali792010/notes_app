import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,required this.maxL });
 
 final String hint;
 final int maxL;
   @override
  Widget build(BuildContext context) {

    return TextField(
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
