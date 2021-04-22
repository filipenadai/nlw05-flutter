import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:flutter_quiz/core/core.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnswerWidget(title: "Isso tá certo?"),
          AnswerWidget(
            title: "Isso tá certo?",
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(title: "Isso tá certo?"),
          AnswerWidget(title: "Isso tá certo?"),
        ],
      ),
    );
  }
}
