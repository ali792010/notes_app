import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomButton extends StatelessWidget {

  void Function()? ontap;
  final bool isLoading;

  CustomButton({super.key,this.ontap, this.isLoading = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child:  Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child:isLoading ? SizedBox(height: 25,width: 25, child: CircularProgressIndicator(color: Colors.black, )) :  Text('Add',style: TextStyle(color: Colors.black, fontSize: 32,fontWeight: FontWeight.w800),)),
      ),
    );
  }
} 
