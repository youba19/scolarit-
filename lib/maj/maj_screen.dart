
import 'package:flutter/material.dart';

class majScreen extends StatelessWidget {
  final String title;

 majScreen({this.title}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
          style: TextStyle(color: Colors.black),
           // obscureText: true,
            decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.red)
              ),
             // border: OutlineInputBorder(),
              labelText: '$title',
                suffixStyle: const TextStyle(color: Colors.white),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1,color: Colors.orange),
              ),

            ),

          ),
      width: 200.0,



    );
  }
}
