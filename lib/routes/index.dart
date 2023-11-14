import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kinedit/database/tables.dart';
import 'package:kinedit/routes/home/home_screen.dart';
import 'package:kinedit/routes/questions_screen.dart';

part 'index.g.dart';

@TypedGoRoute<QuestionRoute>(path: '/questions')
class QuestionRoute extends GoRouteData {
  const QuestionRoute({this.$extra = const []});

  /// questions that will compose the quizz
  final List<Question> $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuestionScreen(
      questions: $extra,
    );
  }
}

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }
}
