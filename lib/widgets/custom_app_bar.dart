import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key,required this.title,required this.icon,this.ontap});
void Function()? ontap;
  String title;
  IconData icon;
    @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
            Text('$title',style: TextStyle(fontSize: 32,fontFamily: 'Pacifico'),),
        Spacer(),
        GestureDetector(
          onTap: ontap,
          child: CustomSearchIcon( icon: icon)),
        ],
      ),
    );
  }
}
