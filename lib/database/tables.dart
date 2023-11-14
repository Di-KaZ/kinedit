import 'package:isar/isar.dart';

part 'tables.g.dart';

@collection
class Joint {
  const Joint({
    required this.id,
    required this.name,
    required this.pathologies,
  });

  final int id;
  final String name;
  final List<int> pathologies;
}

/// represent a pathology
@Collection(accessor: 'pathologies')
class Pathology {
  ///
  const Pathology({
    required this.id,
    required this.name,
    required this.symptoms,
  });

  /// the id of this pathology
  final int id;

  /// the name of this pathology
  final String name;

  final List<int> symptoms;
}

@collection
class Question {
  final int id;
  final String text;
  final List<Response> responses;
  final int? pathologyId;

  const Question({
    required this.id,
    required this.text,
    required this.responses,
    required this.pathologyId,
  });
}

@Embedded()
class Response {
  final int id;
  final String text;
  final bool isValid;

  const Response({
    required this.id,
    required this.text,
    required this.isValid,
  });
}

/// class representing a symptom
@collection
class Symptom {
  ///
  const Symptom({
    required this.id,
    required this.name,
  });

  /// the id of this symptom
  final int id;

  /// the name of this symptom
  final String name;
}
