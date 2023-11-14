import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuCard extends HookConsumerWidget {
  const MenuCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
    super.key,
  });

  /// title of the gamemode
  final String title;

  /// short descirption of the gamemode
  final String description;

  /// the icon to display
  final IconData icon;

  /// what happens when you press the card
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scale = useState<double>(1);

    return GestureDetector(
      onTapDown: (_) => scale.value = .9,
      onTapUp: (_) {
        scale.value = 1;
        onTap();
      },
      child: AnimatedScale(
        scale: scale.value,
        duration: const Duration(milliseconds: 200),
        child: AspectRatio(
          aspectRatio: 9 / 12,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: Color(0xffbbd0ff),
              // ),
              color: const Color(0xff85cfbc),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(icon),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
