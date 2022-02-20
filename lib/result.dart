import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'Go & read  Ramayan!!😶‍🌫️';
      print(resultScore);
    } else if (resultScore <=39) {
      resultText = 'You have some idea about ramayan 🔥';
      print(resultScore);
    } else if (resultScore <= 49) {
      resultText = 'Impressive!!😯🙏\n';
      print(resultScore);

    } else {
      resultText = 'JAI SHREE RAM!!🙏🤩😇';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {

    return Center(

      child: Column(

        children: <Widget>[
          SizedBox(height:100),
          Text(

            resultPhrase,
            style: GoogleFonts.gideonRoman(fontSize: 40,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height:30),
          Text(
            'Score ' '$resultScore',
            style: GoogleFonts.gideonRoman(fontSize: 30,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,

          ),
          SizedBox(height:15),
          FlatButton(
            child:  Column(
              children: <Widget>[

                Text(
                    "\n                                                                              \n",
                    style:GoogleFonts.gideonRoman(fontSize: 19, backgroundColor: Colors.orange)),
              Icon(
              Icons.wifi_protected_setup,
              color: Colors.deepOrangeAccent,
              size: 50,

            ),
                Text(
                    "\nPLAY AGAIN\n",
                    style:GoogleFonts.gideonRoman(fontSize: 15)),


            SizedBox(
              width: 5,
            ),
            ],

          ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
