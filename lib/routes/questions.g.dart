// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $questionRoute,
    ];

RouteBase get $questionRoute => GoRouteData.$route(
      path: '/questions',
      factory: $QuestionRouteExtension._fromState,
    );

extension $QuestionRouteExtension on QuestionRoute {
  static QuestionRoute _fromState(GoRouterState state) => const QuestionRoute();

  String get location => GoRouteData.$location(
        '/questions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
