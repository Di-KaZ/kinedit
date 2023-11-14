import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kinedit/database/tables.dart';
import 'package:kinedit/providers/services/pathologies.dart';
import 'package:kinedit/shared/appbar.dart';
import 'package:kinedit/shared/background.dart';

class QuestionScreen extends HookConsumerWidget {
  final List<Question> questions;

  const QuestionScreen({
    super.key,
    required this.questions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          ListView.builder(
            itemCount: questions.length,
            itemBuilder: (_, idx) {
              return Test(question: questions[idx]);
            },
          ),
        ],
      ),
    );
  }
}

class Test extends StatelessWidget {
  const Test({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(question.text),
        for (final res in question.responses)
          Text(
            res.text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: res.isValid ? Colors.green : Colors.red),
          ),
      ],
    );
  }
}
