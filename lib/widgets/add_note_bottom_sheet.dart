import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});
   @override
  Widget build(BuildContext context) {

    return Column(
      children: [
      CustomTextField(),
      ],
    );
  }
}
