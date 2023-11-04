import 'package:flutter/material.dart';
import 'package:kinedit/shared/appbar.dart';
import 'package:kinedit/shared/background.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: KineditAppBar(
        showHomeButton: true,
      ),
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
