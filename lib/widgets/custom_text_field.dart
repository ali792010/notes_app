import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextField extends StatefulWidget {
   CustomTextField({super.key, required this.hint,required this.maxL,this.onSaved,this.onChanged});
 
 final String hint;
 final int maxL;
 void Function(String?)? onSaved;
 void Function(String)? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
   @override
  Widget build(BuildContext context) {

    return TextFormField(
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      validator: (value){
        if (value?.isEmpty ?? true){
            return 'Field is required';
        }else {
          return null;
        }
      },
      textAlignVertical: TextAlignVertical.center,
      cursorColor: kPrimaryColor,
      maxLines: widget.maxL,
      decoration: InputDecoration(
        hintText: widget.hint,
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
