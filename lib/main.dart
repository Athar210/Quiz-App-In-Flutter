import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which is the most Confirm Laanti Country?',
      'answers': [
        {'text': 'UAE', 'score': 8},
        {'text': 'ISRAEL', 'score': 10},
        {'text': 'USA', 'score': 6},
        {'text': 'UK', 'score': 4}
      ]
    },
    {
      'questionText': 'Which is the most Confirm Jannati Country?',
      'answers': [
        {'text': 'PAKISTAN', 'score': 10},
        {'text': 'CHINA', 'score': 4},
        {'text': 'TURKEY', 'score': 8},
        {'text': 'GERMANY', 'score': 6}
      ]
    },
    {
      'questionText': 'Who is the Quaid Jani?',
      'answers': [
        {'text': 'FOUNDER OF PAKISTAN', 'score': 10},
        {'text': 'LAWYER', 'score': 8},
        {'text': 'BUILDER', 'score': 0},
        {'text': 'ARMY COLONEL', 'score': 0}
      ]
    },
    {
      'questionText': 'Is IT worth in PAKISTAN?',
      'answers': [
        {'text': 'KAHIN NHI', 'score': 10},
        {'text': 'BILKUL BHI NHI', 'score': 10},
        {'text': 'SAWAL E PAIDA NHI', 'score': 10},
        {'text': 'ARE YOU KOMEDY ME?', 'score': 10}
      ]
    },
    {
      'questionText': 'Is there any justice for poors in Pakistan?',
      'answers': [
        {'text': 'IN YOUR DREAMS', 'score': 8},
        {'text': 'NOPE', 'score': 9},
        {'text': 'BUT ONLY FOR RICH PEOPLE', 'score': 10},
        {'text': 'YES', 'score': 0}
      ]
    },
  ];
  var _count = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _count = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;

    setState(() {
      _count = _count + 1;
    });
    if (_count < _questions.length) {
      print('More Questions to go');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ATHAR\'S QUIZ APP'),
        ),
        body: _count < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                count: _count,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}

//class _MyHomePageState extends State<MyHomePage> {
//
//  String str = "Hello World";
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Hello"),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//          Text(str),
//          RaisedButton(
//            child: Text("Click Me"),
//            onPressed: (){
//                setState(() {
//                  if(str=="Clicked")
//                    str = "Hello World";
//                  else
//                    str = "Clicked";
//                });
//            },
//          ),
//        ],
//      ),
//    );
//  }
//}
