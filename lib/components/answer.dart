// ignore_for_file: prefer_const_constructors

import 'components.dart';

class Answer extends StatelessWidget {
  final VoidCallback whenPressedHandler;
  final String answerText;

  const Answer({
    Key? key,
    required this.whenPressedHandler,
    required this.answerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 20.0,
        right: 20.0,
      ),
      child: ElevatedButton(
        onPressed: whenPressedHandler,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
