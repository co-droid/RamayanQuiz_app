import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: RaisedButton(
        padding: const EdgeInsets.symmetric(
            vertical: 30.0, horizontal: 10.0),
        color: Color.fromRGBO(255, 215, 64, 77),
        textColor: Colors.black87,
        child: Text(answerText),
        onPressed: selectHandler,
        shape: StadiumBorder(
        side: BorderSide(color: Colors.white, width: 5),),

      ),
    );
  }
}
