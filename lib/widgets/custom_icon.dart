import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
   CustomSearchIcon({super.key, required this.icon});
IconData icon;
    @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child:  Icon(icon),
    );
  }
}
