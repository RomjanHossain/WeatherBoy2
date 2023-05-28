// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCurrentWeatherDBCollection on Isar {
  IsarCollection<CurrentWeatherDB> get currentWeatherDBs => this.collection();
}

const CurrentWeatherDBSchema = CollectionSchema(
  name: r'CurrentWeatherDB',
  id: 4736093640383597271,
  properties: {
    r'base': PropertySchema(
      id: 0,
      name: r'base',
      type: IsarType.string,
    ),
    r'cod': PropertySchema(
      id: 1,
      name: r'cod',
      type: IsarType.long,
    ),
    r'dt': PropertySchema(
      id: 2,
      name: r'dt',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'timezone': PropertySchema(
      id: 4,
      name: r'timezone',
      type: IsarType.long,
    ),
    r'visibility': PropertySchema(
      id: 5,
      name: r'visibility',
      type: IsarType.long,
    )
  },
  estimateSize: _currentWeatherDBEstimateSize,
  serialize: _currentWeatherDBSerialize,
  deserialize: _currentWeatherDBDeserialize,
  deserializeProp: _currentWeatherDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _currentWeatherDBGetId,
  getLinks: _currentWeatherDBGetLinks,
  attach: _currentWeatherDBAttach,
  version: '3.1.0+1',
);

int _currentWeatherDBEstimateSize(
  CurrentWeatherDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.base.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _currentWeatherDBSerialize(
  CurrentWeatherDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.base);
  writer.writeLong(offsets[1], object.cod);
  writer.writeLong(offsets[2], object.dt);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.timezone);
  writer.writeLong(offsets[5], object.visibility);
}

CurrentWeatherDB _currentWeatherDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CurrentWeatherDB(
    base: reader.readString(offsets[0]),
    cod: reader.readLong(offsets[1]),
    dt: reader.readLong(offsets[2]),
    id: id,
    name: reader.readString(offsets[3]),
    timezone: reader.readLong(offsets[4]),
    visibility: reader.readLong(offsets[5]),
  );
  return object;
}

P _currentWeatherDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _currentWeatherDBGetId(CurrentWeatherDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _currentWeatherDBGetLinks(CurrentWeatherDB object) {
  return [];
}

void _currentWeatherDBAttach(
    IsarCollection<dynamic> col, Id id, CurrentWeatherDB object) {
  object.id = id;
}

extension CurrentWeatherDBQueryWhereSort
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QWhere> {
  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CurrentWeatherDBQueryWhere
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QWhereClause> {
  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CurrentWeatherDBQueryFilter
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QFilterCondition> {
  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'base',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'base',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      baseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'base',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      codEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cod',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      codGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cod',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      codLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cod',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      codBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      dtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      dtGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      dtLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      dtBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      timezoneEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      timezoneGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timezone',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      timezoneLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timezone',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      timezoneBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timezone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      visibilityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibility',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      visibilityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visibility',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      visibilityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visibility',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterFilterCondition>
      visibilityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CurrentWeatherDBQueryObject
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QFilterCondition> {}

extension CurrentWeatherDBQueryLinks
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QFilterCondition> {}

extension CurrentWeatherDBQuerySortBy
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QSortBy> {
  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> sortByBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> sortByCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> sortByDt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByDtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      sortByVisibilityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.desc);
    });
  }
}

extension CurrentWeatherDBQuerySortThenBy
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QSortThenBy> {
  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> thenByBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> thenByCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> thenByDt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByDtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.asc);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QAfterSortBy>
      thenByVisibilityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.desc);
    });
  }
}

extension CurrentWeatherDBQueryWhereDistinct
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct> {
  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct> distinctByBase(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'base', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct> distinctByCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cod');
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct> distinctByDt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dt');
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct>
      distinctByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezone');
    });
  }

  QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QDistinct>
      distinctByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibility');
    });
  }
}

extension CurrentWeatherDBQueryProperty
    on QueryBuilder<CurrentWeatherDB, CurrentWeatherDB, QQueryProperty> {
  QueryBuilder<CurrentWeatherDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CurrentWeatherDB, String, QQueryOperations> baseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'base');
    });
  }

  QueryBuilder<CurrentWeatherDB, int, QQueryOperations> codProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cod');
    });
  }

  QueryBuilder<CurrentWeatherDB, int, QQueryOperations> dtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dt');
    });
  }

  QueryBuilder<CurrentWeatherDB, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CurrentWeatherDB, int, QQueryOperations> timezoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezone');
    });
  }

  QueryBuilder<CurrentWeatherDB, int, QQueryOperations> visibilityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibility');
    });
  }
}
