import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(50),
      child: Text(
        questionText,
        style: GoogleFonts.gideonRoman(fontSize: 28,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
