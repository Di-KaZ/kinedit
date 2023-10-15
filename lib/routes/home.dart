import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const Positioned.fill(
            child: SVGBackground(),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Que voulez vous pratiquer ?',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MenuCard(
                              title: 'Symptome signe clinique',
                              description:
                                  'ouais ouais la description de fou malade',
                              icon: Icons.star,
                            ),
                            const SizedBox(height: 20),
                            MenuCard(
                              title: 'Test',
                              description: 'Test description',
                              icon: Icons.star,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MenuCard(
                                title: 'Test',
                                description: 'Test description',
                                icon: Icons.star,
                              ),
                              const SizedBox(height: 20),
                              MenuCard(
                                title: 'Test',
                                description: 'Test description',
                                icon: Icons.star,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // GridView(
                //   shrinkWrap: true,
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     mainAxisSpacing: 10,
                //     crossAxisSpacing: 10,
                //     childAspectRatio: 9 / 12,
                //   ),
                //   children: const [
                //     MenuCard(
                //       title: 'Test',
                //       description: 'Test description',
                //       icon: Icons.star,
                //     ),
                //     MenuCard(
                //       title: 'Test',
                //       description: 'Test description',
                //       icon: Icons.star,
                //     ),
                //     MenuCard(
                //       title: 'Test',
                //       description: 'Test description',
                //       icon: Icons.star,
                //     ),
                //     MenuCard(
                //       title: 'Test',
                //       description: 'Test description',
                //       icon: Icons.star,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// SVG background for the app
class SVGBackground extends StatelessWidget {
  /// Create SVG background for the app
  const SVGBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/bg.svg',
      fit: BoxFit.cover,
    );
  }
}

class MenuCard extends ConsumerWidget {
  /// title of the gamemode
  final String title;

  /// short descirption of the gamemode
  final String description;

  /// the icon to display
  final IconData icon;

  const MenuCard({
    required this.title,
    required this.description,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AspectRatio(
      aspectRatio: 9 / 12,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(.2),
          ),
          color: Colors.white.withOpacity(.2),
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
    );
  }
}
