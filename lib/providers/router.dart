import 'package:go_router/go_router.dart';
import 'package:kinedit/routes/questions.dart' as questions;
import 'package:kinedit/routes/home.dart' as home;
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/questions',
    routes: [
      // TODO: BAAAD
      ...questions.$appRoutes,
      ...home.$appRoutes,
    ],
  );
}
