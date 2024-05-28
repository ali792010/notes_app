import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key,required this.title,required this.icon});

  String title;
  IconData icon;
    @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
            Text('$title',style: TextStyle(fontSize: 32,fontFamily: 'Pacifico'),),
        Spacer(),
        CustomSearchIcon(icon: icon),
        ],
      ),
    );
  }
}
