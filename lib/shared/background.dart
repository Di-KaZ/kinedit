import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
