import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_quiz/shared/models/quiz_model.dart';
import 'package:flutter_quiz/shared/models/user_model.dart';

class HomeRepository {
  Future<UserModel> getUsers() async {
    final response = await rootBundle.loadString('assets/database/user.json');
    final user = UserModel.fromJson(response);
    return user;
  }
  Future<List<QuizModel>> getQuizzes() async {
    final response = await rootBundle.loadString('assets/database/quizzes.json');
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizzes;
  }
}