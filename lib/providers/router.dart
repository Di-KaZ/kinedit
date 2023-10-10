import 'package:go_router/go_router.dart';
import 'package:kinedit/routes/home.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(routes: $appRoutes);
}
