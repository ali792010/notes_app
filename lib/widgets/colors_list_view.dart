import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget { 

  bool isActive;
  Color co;

  ColorItem({super.key,required this.isActive,required this.co});
   @override
  Widget build(BuildContext context) {
   
    return isActive 
    ? CircleAvatar(
      radius: 28,
      backgroundColor: Colors.white,
      child: CircleAvatar(
         radius: 23,
      backgroundColor: co,
      ),

    ) : CircleAvatar(
      radius: 28,
      backgroundColor: co,
    ) ;
  }
}



class ColorsListView extends StatefulWidget {
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
   List<Color> col = [
    Color(0xffFF0000),
    Color(0xff850F8D),
    Color(0xff00B285),
    Color(0xffFFBC00),
    Color(0xffAFEC9E),
    Color(0xff41B565),
    Color(0xff052285),
    Color(0xffF75F00),
    Color(0x8fFFDE9E),
    Color(0xffA1B06E),
  ];


  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: 50,
        child: ListView.builder(
          itemCount: col.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = col[index];
              setState((){});
            },
            child: ColorItem(
              co: col[index],
              isActive: currentIndex == index,
            ),
          );
        }),
      );
  }
}
