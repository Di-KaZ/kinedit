import 'package:go_router/go_router.dart';
import 'package:kinedit/routes/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

/// The app [GoRouter]
@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: $appRoutes,
  );
}
