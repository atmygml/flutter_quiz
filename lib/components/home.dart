// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'components.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {
          'text': 'blue',
          'score': 5,
        },
        {
          'text': 'red',
          'score': 4,
        },
        {
          'text': 'green',
          'score': 3,
        },
        {
          'text': 'yellow',
          'score': 2,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {
          'text': 'rabbit',
          'score': 5,
        },
        {
          'text': 'dog',
          'score': 4,
        },
        {
          'text': 'panda',
          'score': 3,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {
          'text': 'fried rice',
          'score': 5,
        },
        {
          'text': 'curry laksa',
          'score': 4,
        },
        {
          'text': 'wanton mee',
          'score': 3,
        },
        {
          'text': 'pan mee',
          'score': 2,
        },
        {
          'text': 'tea',
          'score': 1,
        },
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print('Question is answered...');
    if (_questionIndex < _questions.length) {
      print('We have more questions...');
    } else {
      print('No more questions...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'App001 v0.1.0',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(
                  resultScore: _totalScore,
                  whenResetHandler: _resetQuiz,
                ),
        ),
      ),
    );
  }
}
