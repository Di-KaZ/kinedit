import 'package:isar/isar.dart';
import 'package:kinedit/database/tables.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

/// The app [Isar]
@riverpod
Isar isar(IsarRef ref) {
  throw UnimplementedError('not overriden');
}

Future<Isar> initIsar() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = Isar.open(
    schemas: [
      SymptomSchema,
      PathologySchema,
      QuestionSchema,
    ],
    directory: dir.path,
  );
  return isar;
}
