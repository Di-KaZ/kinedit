import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kinedit/routes/index.dart';

class KineditAppBar extends ConsumerWidget implements PreferredSizeWidget {
  /// wether to show a home button at the left of the appbar
  final bool showHomeButton;

  KineditAppBar({
    super.key,
    this.showHomeButton = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: showHomeButton
          ? IconButton(
              color: Colors.white,
              onPressed: () => const HomeRoute().go(context),
              icon: const Icon(Icons.home),
            )
          : null,
      title: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => const LinearGradient(
          colors: <Color>[Color(0xff50bb9f), Color(0xff707d99)],
        ).createShader(const Rect.fromLTWH(0, 0, 90, 25)),
        child: Text(
          'Kinédit.',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
