// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWindDBCollection on Isar {
  IsarCollection<WindDB> get windDBs => this.collection();
}

const WindDBSchema = CollectionSchema(
  name: r'WindDB',
  id: -3687963924126685742,
  properties: {
    r'deg': PropertySchema(
      id: 0,
      name: r'deg',
      type: IsarType.long,
    ),
    r'gust': PropertySchema(
      id: 1,
      name: r'gust',
      type: IsarType.double,
    ),
    r'speed': PropertySchema(
      id: 2,
      name: r'speed',
      type: IsarType.double,
    )
  },
  estimateSize: _windDBEstimateSize,
  serialize: _windDBSerialize,
  deserialize: _windDBDeserialize,
  deserializeProp: _windDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _windDBGetId,
  getLinks: _windDBGetLinks,
  attach: _windDBAttach,
  version: '3.1.0+1',
);

int _windDBEstimateSize(
  WindDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _windDBSerialize(
  WindDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.deg);
  writer.writeDouble(offsets[1], object.gust);
  writer.writeDouble(offsets[2], object.speed);
}

WindDB _windDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WindDB(
    deg: reader.readLong(offsets[0]),
    gust: reader.readDoubleOrNull(offsets[1]),
    speed: reader.readDouble(offsets[2]),
  );
  object.id = id;
  return object;
}

P _windDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _windDBGetId(WindDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _windDBGetLinks(WindDB object) {
  return [];
}

void _windDBAttach(IsarCollection<dynamic> col, Id id, WindDB object) {
  object.id = id;
}

extension WindDBQueryWhereSort on QueryBuilder<WindDB, WindDB, QWhere> {
  QueryBuilder<WindDB, WindDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WindDBQueryWhere on QueryBuilder<WindDB, WindDB, QWhereClause> {
  QueryBuilder<WindDB, WindDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<WindDB, WindDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterWhereClause> idBetween(
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

extension WindDBQueryFilter on QueryBuilder<WindDB, WindDB, QFilterCondition> {
  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> degEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deg',
        value: value,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> degGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deg',
        value: value,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> degLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deg',
        value: value,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> degBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> gustIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gust',
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> gustIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gust',
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> gustEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> gustGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> gustLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> gustBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gust',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> speedEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> speedGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> speedLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterFilterCondition> speedBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension WindDBQueryObject on QueryBuilder<WindDB, WindDB, QFilterCondition> {}

extension WindDBQueryLinks on QueryBuilder<WindDB, WindDB, QFilterCondition> {}

extension WindDBQuerySortBy on QueryBuilder<WindDB, WindDB, QSortBy> {
  QueryBuilder<WindDB, WindDB, QAfterSortBy> sortByDeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deg', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> sortByDegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deg', Sort.desc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> sortByGust() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gust', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> sortByGustDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gust', Sort.desc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> sortBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> sortBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }
}

extension WindDBQuerySortThenBy on QueryBuilder<WindDB, WindDB, QSortThenBy> {
  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenByDeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deg', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenByDegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deg', Sort.desc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenByGust() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gust', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenByGustDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gust', Sort.desc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<WindDB, WindDB, QAfterSortBy> thenBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }
}

extension WindDBQueryWhereDistinct on QueryBuilder<WindDB, WindDB, QDistinct> {
  QueryBuilder<WindDB, WindDB, QDistinct> distinctByDeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deg');
    });
  }

  QueryBuilder<WindDB, WindDB, QDistinct> distinctByGust() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gust');
    });
  }

  QueryBuilder<WindDB, WindDB, QDistinct> distinctBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speed');
    });
  }
}

extension WindDBQueryProperty on QueryBuilder<WindDB, WindDB, QQueryProperty> {
  QueryBuilder<WindDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WindDB, int, QQueryOperations> degProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deg');
    });
  }

  QueryBuilder<WindDB, double?, QQueryOperations> gustProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gust');
    });
  }

  QueryBuilder<WindDB, double, QQueryOperations> speedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speed');
    });
  }
}
