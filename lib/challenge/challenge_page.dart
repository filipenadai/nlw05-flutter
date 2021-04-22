import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widgets/challenge_indicator/challenge_indicator_widget.dart';
import 'package:flutter_quiz/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(title: 'Ser ou nao ser?'),
    );
  }
}
