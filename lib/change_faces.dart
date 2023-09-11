import 'package:flutter/material.dart';
import 'package:toss/button.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
class ChangeFaces extends StatefulWidget{
  @override
  State<ChangeFaces> createState() {
    return _ChangeFaces();
  }
}

class _ChangeFaces extends State<ChangeFaces> {

  late String img="assets/images/heads.jpg";
  var current=1;

  void tapaTap() {
    setState(() {
      current=Random().nextInt(2);
      print(current);
      img= current%2==1?"assets/images/heads.jpg":"assets/images/tails.jpg";
      print(img);
    });
  }
  @override
  Widget build( context) {
    return Center(
      child: Container(
        margin:EdgeInsets.all(40) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 120,
            ),
            const SizedBox(height: 120,),
            Button(tapaTap)
          ],
        ),
      ),
    );
  }

}