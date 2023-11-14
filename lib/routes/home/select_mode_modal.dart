import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kinedit/providers/services/pathologies.dart';
import 'package:kinedit/routes/index.dart';

class SelectModeModal extends HookConsumerWidget {
  const SelectModeModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Choisissez le mode de jeu',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                // style: TextButton.styleFrom(
                //     backgroundColor: Color(0xff474e9c),
                //     foregroundColor: Colors.white,
                //     textStyle: Theme.of(context).textTheme.titleLarge,
                //     padding:
                //         EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                onPressed: () {
                  final questions = ref
                      .read(pathologyServiceProvider)
                      .buildRandomPathologiesQuestions(10);
                  QuestionRoute($extra: questions).go(context);
                },
                child: const Text('Au hasard'),
              ),
              DropdownButton(items: const [], onChanged: (_) {}),
            ],
          ),
        ),
      ],
    );
  }
}

Future<dynamic> openSelectModeModal(BuildContext context) {
  return showModalBottomSheet(
    elevation: 0.1,
    showDragHandle: true,
    constraints: const BoxConstraints(minWidth: double.infinity),
    backgroundColor: const Color(0xff85cfbc),
    context: context,
    builder: (_) => const SelectModeModal(),
  );
}
