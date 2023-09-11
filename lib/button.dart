import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget{
  const Button(this.tapaTap,{super.key});
 final void Function() tapaTap;
  @override
  Widget build( context) {
    return ElevatedButton(onPressed: tapaTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          padding: const EdgeInsets.symmetric(vertical: 20,
          horizontal: 40),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))
        ),

        child: Text("FLIP", style: GoogleFonts.lato(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold
    ),));
  }

}