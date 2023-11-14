import 'package:isar/isar.dart';
import 'package:kinedit/database/tables.dart';
import 'package:kinedit/providers/isar.dart';
import 'package:kinedit/providers/services/pathologies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_data.g.dart';

typedef PathologyDTO = (
  Pathology pathology,
  List<Symptom> symptoms,
  List<Question> questions,
);

final symptoms = [
  Symptom(
    id: 0,
    name: 'branche posterieure',
  ),
  Symptom(
    id: 1,
    name: 'douleur en extension',
  ),
];

final fakeSymptoms = [
  Symptom(
    id: 4,
    name: 'c pas un vrai',
  ),
  Symptom(
    id: 5,
    name: 'celui la nest pas vrai',
  ),
];

final pathos = [
  Pathology(
    name: 'Syndrome Facettaire',
    id: 1,
    symptoms: symptoms.map((e) => e.id).toList(),
  ),
  Pathology(
    name: 'Hernie discale',
    id: 2,
    symptoms: [4],
  ),
];

/// fetch all pathologies
@riverpod
PathologyRepository pathologiesRepository(PathologiesRepositoryRef ref) {
  final isar = ref.watch(isarProvider);
  isar.write((isar) {
    isar.clear();
    isar.symptoms.putAll(fakeSymptoms);
    isar.symptoms.putAll(symptoms);
    isar.pathologies.putAll(pathos);
  });
  return PathologyRepository(isar);
}

class PathologyRepository {
  PathologyRepository(this._isar);
  final Isar _isar;

  List<Pathology> pathologies({List<int> excluded = const [], int? limit}) {
    return _isar.pathologies
        .where()
        .allOf(excluded, (q, s) => q.not().idEqualTo(s))
        .build()
        .findAll(limit: limit);
  }

  List<int> pathologiesIds({List<int> excluded = const [], int? limit}) {
    print(excluded.toString());
    return _isar.pathologies
        .where()
        .allOf(excluded, (q, s) {
          print(s);
          return q.not().idEqualTo(s);
        })
        .idProperty()
        .findAll();
  }

  List<int> symptomsIds({List<int> excluded = const [], int? limit}) {
    return _isar.symptoms
        .where()
        .allOf(excluded, (q, s) => q.not().idEqualTo(s))
        .idProperty()
        .findAll();
  }

  /// fetch all symptoms
  List<Symptom> symptoms({List<int> excluded = const [], int? limit}) {
    return _isar.symptoms
        .where()
        .allOf(excluded, (q, s) => q.not().idEqualTo(s))
        .build()
        .findAll(limit: limit);
  }

  List<Symptom> symptomsById({required List<SymptomId> ids}) {
    return _isar.symptoms
        .where()
        .anyOf(ids, (q, id) => q.idEqualTo(id))
        .findAll();
  }

  List<Pathology> pathoById({required List<PathoId> ids}) {
    return _isar.pathologies
        .where()
        .anyOf(ids, (q, id) => q.idEqualTo(id))
        .findAll();
  }

  PathologyDTO getPathologyDTO(int id) {
    final pathology = _isar.pathologies.get(id);
    final symptoms = _isar.symptoms
        .getAll(pathology?.symptoms ?? [])
        .where((element) => element != null)
        .cast<Symptom>()
        .toList();
    final questions = _isar.questions.where().pathologyIdEqualTo(id).findAll();
    return (pathology!, symptoms, questions);
  }

  List<PathoId> getPathologyContainingSymptoms(List<SymptomId> ids) {
    return _isar.pathologies
        .where()
        .allOf(
          ids,
          (q, sid) => q.symptomsElementEqualTo(sid),
        )
        .idProperty()
        .findAll();
  }

  List<PathoId> pathologiesNotContainingSymptoms(List<SymptomId> ids) {
    return _isar.pathologies
        .where()
        .allOf(
          ids,
          (q, sid) => q.not().symptomsElementEqualTo(sid),
        )
        .idProperty()
        .findAll();
  }
}
