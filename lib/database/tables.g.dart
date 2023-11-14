// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetJointCollection on Isar {
  IsarCollection<int, Joint> get joints => this.collection();
}

const JointSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Joint',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'pathologies',
        type: IsarType.longList,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Joint>(
    serialize: serializeJoint,
    deserialize: deserializeJoint,
    deserializeProperty: deserializeJointProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeJoint(IsarWriter writer, Joint object) {
  IsarCore.writeString(writer, 1, object.name);
  {
    final list = object.pathologies;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeLong(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  return object.id;
}

@isarProtected
Joint deserializeJoint(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _name;
  _name = IsarCore.readString(reader, 1) ?? '';
  final List<int> _pathologies;
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _pathologies = const <int>[];
      } else {
        final list =
            List<int>.filled(length, -9223372036854775808, growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readLong(reader, i);
        }
        IsarCore.freeReader(reader);
        _pathologies = list;
      }
    }
  }
  final object = Joint(
    id: _id,
    name: _name,
    pathologies: _pathologies,
  );
  return object;
}

@isarProtected
dynamic deserializeJointProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <int>[];
          } else {
            final list =
                List<int>.filled(length, -9223372036854775808, growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readLong(reader, i);
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _JointUpdate {
  bool call({
    required int id,
    String? name,
  });
}

class _JointUpdateImpl implements _JointUpdate {
  const _JointUpdateImpl(this.collection);

  final IsarCollection<int, Joint> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
        }) >
        0;
  }
}

sealed class _JointUpdateAll {
  int call({
    required List<int> id,
    String? name,
  });
}

class _JointUpdateAllImpl implements _JointUpdateAll {
  const _JointUpdateAllImpl(this.collection);

  final IsarCollection<int, Joint> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
    });
  }
}

extension JointUpdate on IsarCollection<int, Joint> {
  _JointUpdate get update => _JointUpdateImpl(this);

  _JointUpdateAll get updateAll => _JointUpdateAllImpl(this);
}

sealed class _JointQueryUpdate {
  int call({
    String? name,
  });
}

class _JointQueryUpdateImpl implements _JointQueryUpdate {
  const _JointQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Joint> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
    });
  }
}

extension JointQueryUpdate on IsarQuery<Joint> {
  _JointQueryUpdate get updateFirst => _JointQueryUpdateImpl(this, limit: 1);

  _JointQueryUpdate get updateAll => _JointQueryUpdateImpl(this);
}

class _JointQueryBuilderUpdateImpl implements _JointQueryUpdate {
  const _JointQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Joint, Joint, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension JointQueryBuilderUpdate on QueryBuilder<Joint, Joint, QOperations> {
  _JointQueryUpdate get updateFirst =>
      _JointQueryBuilderUpdateImpl(this, limit: 1);

  _JointQueryUpdate get updateAll => _JointQueryBuilderUpdateImpl(this);
}

extension JointQueryFilter on QueryBuilder<Joint, Joint, QFilterCondition> {
  QueryBuilder<Joint, Joint, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> pathologiesElementEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition>
      pathologiesElementGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition>
      pathologiesElementGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> pathologiesElementLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition>
      pathologiesElementLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> pathologiesElementBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> pathologiesIsEmpty() {
    return not().pathologiesIsNotEmpty();
  }

  QueryBuilder<Joint, Joint, QAfterFilterCondition> pathologiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }
}

extension JointQueryObject on QueryBuilder<Joint, Joint, QFilterCondition> {}

extension JointQuerySortBy on QueryBuilder<Joint, Joint, QSortBy> {
  QueryBuilder<Joint, Joint, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Joint, Joint, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Joint, Joint, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Joint, Joint, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension JointQuerySortThenBy on QueryBuilder<Joint, Joint, QSortThenBy> {
  QueryBuilder<Joint, Joint, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Joint, Joint, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Joint, Joint, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Joint, Joint, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension JointQueryWhereDistinct on QueryBuilder<Joint, Joint, QDistinct> {
  QueryBuilder<Joint, Joint, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Joint, Joint, QAfterDistinct> distinctByPathologies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension JointQueryProperty1 on QueryBuilder<Joint, Joint, QProperty> {
  QueryBuilder<Joint, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Joint, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Joint, List<int>, QAfterProperty> pathologiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension JointQueryProperty2<R> on QueryBuilder<Joint, R, QAfterProperty> {
  QueryBuilder<Joint, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Joint, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Joint, (R, List<int>), QAfterProperty> pathologiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension JointQueryProperty3<R1, R2>
    on QueryBuilder<Joint, (R1, R2), QAfterProperty> {
  QueryBuilder<Joint, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Joint, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Joint, (R1, R2, List<int>), QOperations> pathologiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetPathologyCollection on Isar {
  IsarCollection<int, Pathology> get pathologies => this.collection();
}

const PathologySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Pathology',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'symptoms',
        type: IsarType.longList,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Pathology>(
    serialize: serializePathology,
    deserialize: deserializePathology,
    deserializeProperty: deserializePathologyProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializePathology(IsarWriter writer, Pathology object) {
  IsarCore.writeString(writer, 1, object.name);
  {
    final list = object.symptoms;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeLong(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  return object.id;
}

@isarProtected
Pathology deserializePathology(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _name;
  _name = IsarCore.readString(reader, 1) ?? '';
  final List<int> _symptoms;
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _symptoms = const <int>[];
      } else {
        final list =
            List<int>.filled(length, -9223372036854775808, growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readLong(reader, i);
        }
        IsarCore.freeReader(reader);
        _symptoms = list;
      }
    }
  }
  final object = Pathology(
    id: _id,
    name: _name,
    symptoms: _symptoms,
  );
  return object;
}

@isarProtected
dynamic deserializePathologyProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <int>[];
          } else {
            final list =
                List<int>.filled(length, -9223372036854775808, growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readLong(reader, i);
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _PathologyUpdate {
  bool call({
    required int id,
    String? name,
  });
}

class _PathologyUpdateImpl implements _PathologyUpdate {
  const _PathologyUpdateImpl(this.collection);

  final IsarCollection<int, Pathology> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
        }) >
        0;
  }
}

sealed class _PathologyUpdateAll {
  int call({
    required List<int> id,
    String? name,
  });
}

class _PathologyUpdateAllImpl implements _PathologyUpdateAll {
  const _PathologyUpdateAllImpl(this.collection);

  final IsarCollection<int, Pathology> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
    });
  }
}

extension PathologyUpdate on IsarCollection<int, Pathology> {
  _PathologyUpdate get update => _PathologyUpdateImpl(this);

  _PathologyUpdateAll get updateAll => _PathologyUpdateAllImpl(this);
}

sealed class _PathologyQueryUpdate {
  int call({
    String? name,
  });
}

class _PathologyQueryUpdateImpl implements _PathologyQueryUpdate {
  const _PathologyQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Pathology> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
    });
  }
}

extension PathologyQueryUpdate on IsarQuery<Pathology> {
  _PathologyQueryUpdate get updateFirst =>
      _PathologyQueryUpdateImpl(this, limit: 1);

  _PathologyQueryUpdate get updateAll => _PathologyQueryUpdateImpl(this);
}

class _PathologyQueryBuilderUpdateImpl implements _PathologyQueryUpdate {
  const _PathologyQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Pathology, Pathology, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension PathologyQueryBuilderUpdate
    on QueryBuilder<Pathology, Pathology, QOperations> {
  _PathologyQueryUpdate get updateFirst =>
      _PathologyQueryBuilderUpdateImpl(this, limit: 1);

  _PathologyQueryUpdate get updateAll => _PathologyQueryBuilderUpdateImpl(this);
}

extension PathologyQueryFilter
    on QueryBuilder<Pathology, Pathology, QFilterCondition> {
  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsElementEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsElementGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsElementGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsElementLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsElementLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsElementBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition> symptomsIsEmpty() {
    return not().symptomsIsNotEmpty();
  }

  QueryBuilder<Pathology, Pathology, QAfterFilterCondition>
      symptomsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }
}

extension PathologyQueryObject
    on QueryBuilder<Pathology, Pathology, QFilterCondition> {}

extension PathologyQuerySortBy on QueryBuilder<Pathology, Pathology, QSortBy> {
  QueryBuilder<Pathology, Pathology, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension PathologyQuerySortThenBy
    on QueryBuilder<Pathology, Pathology, QSortThenBy> {
  QueryBuilder<Pathology, Pathology, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension PathologyQueryWhereDistinct
    on QueryBuilder<Pathology, Pathology, QDistinct> {
  QueryBuilder<Pathology, Pathology, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pathology, Pathology, QAfterDistinct> distinctBySymptoms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension PathologyQueryProperty1
    on QueryBuilder<Pathology, Pathology, QProperty> {
  QueryBuilder<Pathology, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Pathology, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Pathology, List<int>, QAfterProperty> symptomsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension PathologyQueryProperty2<R>
    on QueryBuilder<Pathology, R, QAfterProperty> {
  QueryBuilder<Pathology, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Pathology, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Pathology, (R, List<int>), QAfterProperty> symptomsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension PathologyQueryProperty3<R1, R2>
    on QueryBuilder<Pathology, (R1, R2), QAfterProperty> {
  QueryBuilder<Pathology, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Pathology, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Pathology, (R1, R2, List<int>), QOperations> symptomsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetQuestionCollection on Isar {
  IsarCollection<int, Question> get questions => this.collection();
}

const QuestionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Question',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'text',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'responses',
        type: IsarType.objectList,
        target: 'Response',
      ),
      IsarPropertySchema(
        name: 'pathologyId',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Question>(
    serialize: serializeQuestion,
    deserialize: deserializeQuestion,
    deserializeProperty: deserializeQuestionProp,
  ),
  embeddedSchemas: [ResponseSchema],
);

@isarProtected
int serializeQuestion(IsarWriter writer, Question object) {
  IsarCore.writeString(writer, 1, object.text);
  {
    final list = object.responses;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeResponse(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeLong(writer, 3, object.pathologyId ?? -9223372036854775808);
  return object.id;
}

@isarProtected
Question deserializeQuestion(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _text;
  _text = IsarCore.readString(reader, 1) ?? '';
  final List<Response> _responses;
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _responses = const <Response>[];
      } else {
        final list = List<Response>.filled(
            length,
            Response(
              id: -9223372036854775808,
              text: '',
              isValid: false,
            ),
            growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = Response(
                id: -9223372036854775808,
                text: '',
                isValid: false,
              );
            } else {
              final embedded = deserializeResponse(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _responses = list;
      }
    }
  }
  final int? _pathologyId;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _pathologyId = null;
    } else {
      _pathologyId = value;
    }
  }
  final object = Question(
    id: _id,
    text: _text,
    responses: _responses,
    pathologyId: _pathologyId,
  );
  return object;
}

@isarProtected
dynamic deserializeQuestionProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <Response>[];
          } else {
            final list = List<Response>.filled(
                length,
                Response(
                  id: -9223372036854775808,
                  text: '',
                  isValid: false,
                ),
                growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = Response(
                    id: -9223372036854775808,
                    text: '',
                    isValid: false,
                  );
                } else {
                  final embedded = deserializeResponse(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _QuestionUpdate {
  bool call({
    required int id,
    String? text,
    int? pathologyId,
  });
}

class _QuestionUpdateImpl implements _QuestionUpdate {
  const _QuestionUpdateImpl(this.collection);

  final IsarCollection<int, Question> collection;

  @override
  bool call({
    required int id,
    Object? text = ignore,
    Object? pathologyId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (text != ignore) 1: text as String?,
          if (pathologyId != ignore) 3: pathologyId as int?,
        }) >
        0;
  }
}

sealed class _QuestionUpdateAll {
  int call({
    required List<int> id,
    String? text,
    int? pathologyId,
  });
}

class _QuestionUpdateAllImpl implements _QuestionUpdateAll {
  const _QuestionUpdateAllImpl(this.collection);

  final IsarCollection<int, Question> collection;

  @override
  int call({
    required List<int> id,
    Object? text = ignore,
    Object? pathologyId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (text != ignore) 1: text as String?,
      if (pathologyId != ignore) 3: pathologyId as int?,
    });
  }
}

extension QuestionUpdate on IsarCollection<int, Question> {
  _QuestionUpdate get update => _QuestionUpdateImpl(this);

  _QuestionUpdateAll get updateAll => _QuestionUpdateAllImpl(this);
}

sealed class _QuestionQueryUpdate {
  int call({
    String? text,
    int? pathologyId,
  });
}

class _QuestionQueryUpdateImpl implements _QuestionQueryUpdate {
  const _QuestionQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Question> query;
  final int? limit;

  @override
  int call({
    Object? text = ignore,
    Object? pathologyId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (text != ignore) 1: text as String?,
      if (pathologyId != ignore) 3: pathologyId as int?,
    });
  }
}

extension QuestionQueryUpdate on IsarQuery<Question> {
  _QuestionQueryUpdate get updateFirst =>
      _QuestionQueryUpdateImpl(this, limit: 1);

  _QuestionQueryUpdate get updateAll => _QuestionQueryUpdateImpl(this);
}

class _QuestionQueryBuilderUpdateImpl implements _QuestionQueryUpdate {
  const _QuestionQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Question, Question, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? text = ignore,
    Object? pathologyId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (text != ignore) 1: text as String?,
        if (pathologyId != ignore) 3: pathologyId as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension QuestionQueryBuilderUpdate
    on QueryBuilder<Question, Question, QOperations> {
  _QuestionQueryUpdate get updateFirst =>
      _QuestionQueryBuilderUpdateImpl(this, limit: 1);

  _QuestionQueryUpdate get updateAll => _QuestionQueryBuilderUpdateImpl(this);
}

extension QuestionQueryFilter
    on QueryBuilder<Question, Question, QFilterCondition> {
  QueryBuilder<Question, Question, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      textGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> responsesIsEmpty() {
    return not().responsesIsNotEmpty();
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      responsesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> pathologyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      pathologyIdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> pathologyIdEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      pathologyIdGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      pathologyIdGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> pathologyIdLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition>
      pathologyIdLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Question, Question, QAfterFilterCondition> pathologyIdBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension QuestionQueryObject
    on QueryBuilder<Question, Question, QFilterCondition> {}

extension QuestionQuerySortBy on QueryBuilder<Question, Question, QSortBy> {
  QueryBuilder<Question, Question, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> sortByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> sortByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> sortByPathologyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> sortByPathologyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }
}

extension QuestionQuerySortThenBy
    on QueryBuilder<Question, Question, QSortThenBy> {
  QueryBuilder<Question, Question, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> thenByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> thenByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> thenByPathologyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Question, Question, QAfterSortBy> thenByPathologyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }
}

extension QuestionQueryWhereDistinct
    on QueryBuilder<Question, Question, QDistinct> {
  QueryBuilder<Question, Question, QAfterDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Question, Question, QAfterDistinct> distinctByPathologyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }
}

extension QuestionQueryProperty1
    on QueryBuilder<Question, Question, QProperty> {
  QueryBuilder<Question, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Question, String, QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Question, List<Response>, QAfterProperty> responsesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Question, int?, QAfterProperty> pathologyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension QuestionQueryProperty2<R>
    on QueryBuilder<Question, R, QAfterProperty> {
  QueryBuilder<Question, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Question, (R, String), QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Question, (R, List<Response>), QAfterProperty>
      responsesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Question, (R, int?), QAfterProperty> pathologyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension QuestionQueryProperty3<R1, R2>
    on QueryBuilder<Question, (R1, R2), QAfterProperty> {
  QueryBuilder<Question, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Question, (R1, R2, String), QOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Question, (R1, R2, List<Response>), QOperations>
      responsesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Question, (R1, R2, int?), QOperations> pathologyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSymptomCollection on Isar {
  IsarCollection<int, Symptom> get symptoms => this.collection();
}

const SymptomSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Symptom',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Symptom>(
    serialize: serializeSymptom,
    deserialize: deserializeSymptom,
    deserializeProperty: deserializeSymptomProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeSymptom(IsarWriter writer, Symptom object) {
  IsarCore.writeString(writer, 1, object.name);
  return object.id;
}

@isarProtected
Symptom deserializeSymptom(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _name;
  _name = IsarCore.readString(reader, 1) ?? '';
  final object = Symptom(
    id: _id,
    name: _name,
  );
  return object;
}

@isarProtected
dynamic deserializeSymptomProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _SymptomUpdate {
  bool call({
    required int id,
    String? name,
  });
}

class _SymptomUpdateImpl implements _SymptomUpdate {
  const _SymptomUpdateImpl(this.collection);

  final IsarCollection<int, Symptom> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
        }) >
        0;
  }
}

sealed class _SymptomUpdateAll {
  int call({
    required List<int> id,
    String? name,
  });
}

class _SymptomUpdateAllImpl implements _SymptomUpdateAll {
  const _SymptomUpdateAllImpl(this.collection);

  final IsarCollection<int, Symptom> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
    });
  }
}

extension SymptomUpdate on IsarCollection<int, Symptom> {
  _SymptomUpdate get update => _SymptomUpdateImpl(this);

  _SymptomUpdateAll get updateAll => _SymptomUpdateAllImpl(this);
}

sealed class _SymptomQueryUpdate {
  int call({
    String? name,
  });
}

class _SymptomQueryUpdateImpl implements _SymptomQueryUpdate {
  const _SymptomQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Symptom> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
    });
  }
}

extension SymptomQueryUpdate on IsarQuery<Symptom> {
  _SymptomQueryUpdate get updateFirst =>
      _SymptomQueryUpdateImpl(this, limit: 1);

  _SymptomQueryUpdate get updateAll => _SymptomQueryUpdateImpl(this);
}

class _SymptomQueryBuilderUpdateImpl implements _SymptomQueryUpdate {
  const _SymptomQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Symptom, Symptom, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension SymptomQueryBuilderUpdate
    on QueryBuilder<Symptom, Symptom, QOperations> {
  _SymptomQueryUpdate get updateFirst =>
      _SymptomQueryBuilderUpdateImpl(this, limit: 1);

  _SymptomQueryUpdate get updateAll => _SymptomQueryBuilderUpdateImpl(this);
}

extension SymptomQueryFilter
    on QueryBuilder<Symptom, Symptom, QFilterCondition> {
  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }
}

extension SymptomQueryObject
    on QueryBuilder<Symptom, Symptom, QFilterCondition> {}

extension SymptomQuerySortBy on QueryBuilder<Symptom, Symptom, QSortBy> {
  QueryBuilder<Symptom, Symptom, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension SymptomQuerySortThenBy
    on QueryBuilder<Symptom, Symptom, QSortThenBy> {
  QueryBuilder<Symptom, Symptom, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Symptom, Symptom, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension SymptomQueryWhereDistinct
    on QueryBuilder<Symptom, Symptom, QDistinct> {
  QueryBuilder<Symptom, Symptom, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }
}

extension SymptomQueryProperty1 on QueryBuilder<Symptom, Symptom, QProperty> {
  QueryBuilder<Symptom, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Symptom, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension SymptomQueryProperty2<R> on QueryBuilder<Symptom, R, QAfterProperty> {
  QueryBuilder<Symptom, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Symptom, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension SymptomQueryProperty3<R1, R2>
    on QueryBuilder<Symptom, (R1, R2), QAfterProperty> {
  QueryBuilder<Symptom, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Symptom, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const ResponseSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Response',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'text',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isValid',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, Response>(
    serialize: serializeResponse,
    deserialize: deserializeResponse,
  ),
);

@isarProtected
int serializeResponse(IsarWriter writer, Response object) {
  IsarCore.writeLong(writer, 1, object.id);
  IsarCore.writeString(writer, 2, object.text);
  IsarCore.writeBool(writer, 3, object.isValid);
  return 0;
}

@isarProtected
Response deserializeResponse(IsarReader reader) {
  final int _id;
  _id = IsarCore.readLong(reader, 1);
  final String _text;
  _text = IsarCore.readString(reader, 2) ?? '';
  final bool _isValid;
  _isValid = IsarCore.readBool(reader, 3);
  final object = Response(
    id: _id,
    text: _text,
    isValid: _isValid,
  );
  return object;
}

extension ResponseQueryFilter
    on QueryBuilder<Response, Response, QFilterCondition> {
  QueryBuilder<Response, Response, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition>
      textGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Response, Response, QAfterFilterCondition> isValidEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }
}

extension ResponseQueryObject
    on QueryBuilder<Response, Response, QFilterCondition> {}
