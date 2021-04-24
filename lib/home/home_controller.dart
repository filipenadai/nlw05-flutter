import 'package:flutter/material.dart';
import 'package:flutter_quiz/home/home_repository.dart';
import 'package:flutter_quiz/home/home_state.dart';
import 'package:flutter_quiz/shared/models/quiz_model.dart';
import 'package:flutter_quiz/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  final homeRepository = HomeRepository();

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    user = await homeRepository.getUsers();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await homeRepository.getQuizzes();
    state = HomeState.success;
  }
}
