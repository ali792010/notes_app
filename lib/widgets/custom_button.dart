import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text('Add',style: TextStyle(color: Colors.black, fontSize: 32,fontWeight: FontWeight.w800),)),
    );
  }
}
