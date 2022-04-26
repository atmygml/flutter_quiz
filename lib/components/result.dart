// ignore_for_file: prefer_const_constructors

import 'components.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback whenResetHandler;

  const Result({
    Key? key,
    required this.resultScore,
    required this.whenResetHandler,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 8) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 12) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are bad!';
    }
    return '$resultText and your total score is $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
                width: double.infinity,
              ),
              Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: double.infinity,
              ),
              ElevatedButton(
                onPressed: whenResetHandler,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Reset the Quiz',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
