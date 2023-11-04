import 'package:flutter/material.dart';
import 'package:kinedit/routes/home/card.dart';
import 'package:kinedit/shared/appbar.dart';
import 'package:kinedit/shared/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KineditAppBar(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
