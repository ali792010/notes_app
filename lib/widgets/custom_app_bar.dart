import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 32,fontFamily: 'Pacifico'),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
