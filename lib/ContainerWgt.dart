
import 'package:flutter/material.dart';
const KStyleWgt=TextStyle(
  fontSize: 13.0,
  color:Colors.white,
  fontFamily: 'Quicksand',
  fontWeight: FontWeight.bold,
  letterSpacing: 1.0,

);
const kstylesymp=TextStyle(
    fontSize: 10.0,
    color:Colors.black,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700


);
class ContainerWgt extends StatelessWidget {

  final String text;

  final Function onpressed;
  ContainerWgt({@required this.onpressed,@required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
          child: GestureDetector(
          onTap: onpressed,
          child: Container(
                    height: 50.0,
                    width:120.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(

                colors: [
                  //Colors.blue,
                  Color(0xff6002ff),
                  Color(0xff6002ee),

                ],
              ),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.0),
                topLeft: Radius.circular(22.0),
                  bottomRight: Radius.circular(22.0),
                topRight: Radius.circular(22.0),
    ),
  ),
            child:Center(child: Text(text,style: KStyleWgt,)),
        ),
),
);}}