import 'components.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questions[questionIndex]['questionText'] as String,
        ),
        ...((questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  whenPressedHandler: () => answerQuestion(answer['score']),
                  answerText: answer['text'] as String,
                ))
            .toList())
      ],
    );
  }
}
