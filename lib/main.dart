import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'In the beginning of the Ramayana, who is the sage who writes down the poem of this name?',
      'answers': [
        {'text': 'KAMPAN', 'score': -1},
        {'text': 'Ved Vyas', 'score': -1},
        {'text': 'RAMESH MENON', 'score': -1},
        {'text': 'VALMIKI', 'score': 10},
      ],
    },
    {
      'questionText': 'What caste is Rama born into?',
      'answers': [
        {'text': 'SHUDRA (LABORER)', 'score': -1},
        {'text': 'VAISYA (CRAFTER, MERCHANT)', 'score': -1},
        {'text': 'KSHATRIYA (WARRIOR OR KING)', 'score': 10},
        {'text': 'BRAHMIN (HOLY PERSON, PRIEST)', 'score': -1},
      ],
    },
    {
      'questionText': 'Why does Viswamitra ask Rama to accompany him?',
      'answers': [
        {'text': 'TO FIND THE DEATHLY HALLOWS', 'score': -1},
        {'text': 'TO PULL A SWORD OUT OF THE STONE', 'score': -1},
        {'text': 'TO DEFEAT THE DEMON RAVANA', 'score': -1},
        {'text': 'TO DEFEAT THE DEMON TATAKA', 'score': 10},
      ],
    },
    {
      'questionText': 'What miraculous story is told about Sita\'s birth?',
      'answers': [
        {'text': 'SITA\'S MOTHER AND FATHER CONCEIVED HER AFTER DRINKING A SACRED POTION', 'score': -1},
        {'text': 'SITA\'S MOTHER AND FATHER CONCEIVED HER NATURALLY', 'score': -1},
        {'text': 'SITA\'S MOTHER REALIZED SHE WAS PREGNANT AFTER DREAMING OF A WHITE ELEPHANT', 'score': -1},
        {'text': 'SITA\'S MOTHER AND FATHER FOUND HER IN A FURROW IN SACRED EARTH', 'score': 10},
      ],
    },
    {
      'questionText': 'Ayodhya was the capital of which Kingdom?',
      'answers': [
        {'text': ' Mithila', 'score': -1},
        {'text': 'Kosala','score': 10},
        {'text': 'Indraprastha', 'score': -1},
        {'text': 'Lanka', 'score': -1},
      ],
    },
    {
    'questionText': 'Whose help did Ravana take to carry away Sita?',
    'answers': [
    {'text': ' Kumbhakarna', 'score': -1},
    {'text': 'Vibheeshana','score': -1},
    {'text': 'Khara', 'score': -1},
    {'text': 'Mareecha', 'score': 10},
    ],
    },


  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final urlimage='https://static4.depositphotos.com/1006579/281/v/600/depositphotos_2816132-stock-illustration-sunlight.jpg';
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

            backgroundColor: Colors.black87,
            centerTitle: true, title: Image.network('https://upload.wikimedia.org/wikipedia/en/0/08/RAMAYAN.gif',width: 1500,),
        ),

        body:  

          Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: NetworkImage(urlimage),
              fit:BoxFit.cover,
              

          ),
    ),
            child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
        )
              : Result(_totalScore, _resetQuiz),
          ),
      ),
    );
  }
}
