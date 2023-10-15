import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kinedit/routes/home.dart';

part 'questions.g.dart';

@TypedGoRoute<QuestionRoute>(path: '/questions')
class QuestionRoute extends GoRouteData {
  const QuestionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          const Positioned.fill(
            child: SVGBackground(),
          ),
        ],
      ),
    );
  }
}
