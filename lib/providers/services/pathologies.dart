import 'dart:collection';

import 'package:isar/isar.dart';
import 'package:kinedit/database/tables.dart';
import 'package:kinedit/providers/isar.dart';
import 'package:kinedit/providers/repositories/isar_data.dart';
import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pathologies.g.dart';

extension RandomElement<T> on List<T> {
  List<T> shuffleTake(int count) {
    if (count == 0) return const [];
    return List.from(this)
      ..shuffle()
      ..take(count);
  }
}

extension RandomElementIterable<T> on Iterable<T> {
  List<T> shuffleTake(int count) {
    if (count == 0) return const [];
    return List.from(this)
      ..shuffle()
      ..take(count);
  }
}

Response _symptomToResponse(Symptom symptom, bool isValid) {
  print(isValid);
  return Response(id: -1, text: symptom.name, isValid: isValid);
}

@riverpod
PathologyService pathologyService(PathologyServiceRef ref) {
  final repository = ref.watch(pathologiesRepositoryProvider);
  return PathologyService(repository);
}

typedef PathoId = int;
typedef SymptomId = int;

class QuizzBuilder {
  final Map<PathoId, List<SymptomId>> _usedSymptoms = {};

  final List<PathoId> _usedPathos = [];

  final PathologyRepository _repository;

  final List<Question> _generatedQuestions = [];

  UnmodifiableListView<Question> get questions =>
      UnmodifiableListView(_generatedQuestions);

  QuizzBuilder(this._repository);

  List<SymptomId> _usedSymptomsForPatho(Pathology patho) {
    if (_usedSymptoms.containsKey(patho.id)) {
      return _usedSymptoms[patho.id]!;
    }
    return [];
  }

  void generateQuizz() {
    _generatedQuestions.add(createGuessSymptomsInPathologyQuestion());
    _generatedQuestions.add(createGuessPathologyBySymptomsQuestion());
  }

  /// find a random symptom
  /// get all patho that have it and chosse 1 random
  /// if only 1 result question is finished
  /// if multiple select 1 patho randomly and take another symptoms of it, reapeart algo
  /// until only one patho is found
  Question createGuessPathologyBySymptomsQuestion() {
    List<SymptomId> symptomsSoFar = [
      _repository.symptomsIds().shuffleTake(1).first
    ];

    List<PathoId> foundPathos = [];

    while (foundPathos.length != 1) {
      foundPathos = _repository.getPathologyContainingSymptoms(symptomsSoFar);
      if (foundPathos.isEmpty) {
        symptomsSoFar = [];
        continue;
      }
      final randomPatho = foundPathos.shuffleTake(1).first;
      final (_, symptoms, _) = _repository.getPathologyDTO(randomPatho);
      symptomsSoFar.add(symptoms.shuffleTake(1).first.id);
    }

    var (patho, symptoms, _) = _repository.getPathologyDTO(foundPathos.first);

    symptoms = symptoms
        .where((s) => symptomsSoFar.any((element) => element == s.id))
        .toList();

    final randomInvalid = _repository.pathoById(
      ids: _repository
          .pathologiesNotContainingSymptoms(symptomsSoFar)
          .shuffleTake(4)
          .toList(),
    );

    return Question(
      id: -1,
      text:
          'Quel est la pathologie qui contient le(s) symptome(s) ${symptoms.shuffleTake(Random().nextInt(5) + 1).map((e) => e.name).join(', ')} ?',
      responses: [
        Response(id: -1, text: patho.name, isValid: true),
        ...randomInvalid.map(
          (patho) => Response(id: -1, text: patho.name, isValid: false),
        ),
      ]..shuffle(),
      pathologyId: -1,
    );
  }

  Question createGuessSymptomsInPathologyQuestion() {
    final id = _repository.pathologiesIds().shuffleTake(1).first;
    final (patho, symptoms, _) = _repository.getPathologyDTO(id);

    /// take 1 to 4 valid answer
    final toGuess = symptoms
        .where(
          /// prevent using the same symptoms mutiple time in the same quizz
          (s) =>
              !_usedSymptomsForPatho(patho).any((element) => element == s.id),
        )
        .shuffleTake(Random().nextInt(5) + 1);

    if (toGuess.isEmpty) {
      throw Error();
    }

    final randomInvalid = _repository.symptoms(
      excluded: symptoms.map((e) => e.id).toList(),
      limit: 4 - toGuess.length,
    );

    return Question(
      id: -1,
      text:
          'Quels sont les symptomes present dans la pathologie ${patho.name} ?',
      responses: [
        ...toGuess.map((e) => _symptomToResponse(e, true)),
        ...randomInvalid.map((e) => _symptomToResponse(e, false)),
      ]..shuffle(),
      pathologyId: -1,
    );
  }
}

class PathologyService {
  final PathologyRepository _repository;
  PathologyService(this._repository);

  List<Question> buildRandomPathologiesQuestions(int count) {
    final b = QuizzBuilder(_repository)..generateQuizz();
    return b.questions;
  }
}
