// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMainDBCollection on Isar {
  IsarCollection<MainDB> get mainDBs => this.collection();
}

const MainDBSchema = CollectionSchema(
  name: r'MainDB',
  id: 8667101154586006733,
  properties: {
    r'feelsLike': PropertySchema(
      id: 0,
      name: r'feelsLike',
      type: IsarType.double,
    ),
    r'grndLevel': PropertySchema(
      id: 1,
      name: r'grndLevel',
      type: IsarType.long,
    ),
    r'humidity': PropertySchema(
      id: 2,
      name: r'humidity',
      type: IsarType.long,
    ),
    r'pressure': PropertySchema(
      id: 3,
      name: r'pressure',
      type: IsarType.long,
    ),
    r'seaLevel': PropertySchema(
      id: 4,
      name: r'seaLevel',
      type: IsarType.long,
    ),
    r'temp': PropertySchema(
      id: 5,
      name: r'temp',
      type: IsarType.double,
    ),
    r'tempMax': PropertySchema(
      id: 6,
      name: r'tempMax',
      type: IsarType.double,
    ),
    r'tempMin': PropertySchema(
      id: 7,
      name: r'tempMin',
      type: IsarType.double,
    )
  },
  estimateSize: _mainDBEstimateSize,
  serialize: _mainDBSerialize,
  deserialize: _mainDBDeserialize,
  deserializeProp: _mainDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _mainDBGetId,
  getLinks: _mainDBGetLinks,
  attach: _mainDBAttach,
  version: '3.1.0+1',
);

int _mainDBEstimateSize(
  MainDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _mainDBSerialize(
  MainDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.feelsLike);
  writer.writeLong(offsets[1], object.grndLevel);
  writer.writeLong(offsets[2], object.humidity);
  writer.writeLong(offsets[3], object.pressure);
  writer.writeLong(offsets[4], object.seaLevel);
  writer.writeDouble(offsets[5], object.temp);
  writer.writeDouble(offsets[6], object.tempMax);
  writer.writeDouble(offsets[7], object.tempMin);
}

MainDB _mainDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MainDB(
    feelsLike: reader.readDouble(offsets[0]),
    grndLevel: reader.readLongOrNull(offsets[1]),
    humidity: reader.readLong(offsets[2]),
    pressure: reader.readLong(offsets[3]),
    seaLevel: reader.readLongOrNull(offsets[4]),
    temp: reader.readDouble(offsets[5]),
    tempMax: reader.readDouble(offsets[6]),
    tempMin: reader.readDouble(offsets[7]),
  );
  object.id = id;
  return object;
}

P _mainDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mainDBGetId(MainDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mainDBGetLinks(MainDB object) {
  return [];
}

void _mainDBAttach(IsarCollection<dynamic> col, Id id, MainDB object) {
  object.id = id;
}

extension MainDBQueryWhereSort on QueryBuilder<MainDB, MainDB, QWhere> {
  QueryBuilder<MainDB, MainDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MainDBQueryWhere on QueryBuilder<MainDB, MainDB, QWhereClause> {
  QueryBuilder<MainDB, MainDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MainDB, MainDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterWhereClause> idBetween(
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

extension MainDBQueryFilter on QueryBuilder<MainDB, MainDB, QFilterCondition> {
  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> feelsLikeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feelsLike',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> feelsLikeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feelsLike',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> feelsLikeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feelsLike',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> feelsLikeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feelsLike',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> grndLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grndLevel',
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> grndLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grndLevel',
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> grndLevelEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grndLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> grndLevelGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grndLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> grndLevelLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grndLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> grndLevelBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grndLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> humidityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'humidity',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> humidityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'humidity',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> humidityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'humidity',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> humidityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'humidity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> pressureEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pressure',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> pressureGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pressure',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> pressureLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pressure',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> pressureBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pressure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> seaLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seaLevel',
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> seaLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seaLevel',
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> seaLevelEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seaLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> seaLevelGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seaLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> seaLevelLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seaLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> seaLevelBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seaLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMaxEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMaxGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tempMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMaxLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tempMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMaxBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tempMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMinEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMinGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tempMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMinLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tempMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterFilterCondition> tempMinBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tempMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension MainDBQueryObject on QueryBuilder<MainDB, MainDB, QFilterCondition> {}

extension MainDBQueryLinks on QueryBuilder<MainDB, MainDB, QFilterCondition> {}

extension MainDBQuerySortBy on QueryBuilder<MainDB, MainDB, QSortBy> {
  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByFeelsLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByGrndLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grndLevel', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByGrndLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grndLevel', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortBySeaLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seaLevel', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortBySeaLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seaLevel', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByTempMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMax', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByTempMaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMax', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByTempMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMin', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> sortByTempMinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMin', Sort.desc);
    });
  }
}

extension MainDBQuerySortThenBy on QueryBuilder<MainDB, MainDB, QSortThenBy> {
  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByFeelsLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByGrndLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grndLevel', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByGrndLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grndLevel', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenBySeaLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seaLevel', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenBySeaLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seaLevel', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByTempMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMax', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByTempMaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMax', Sort.desc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByTempMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMin', Sort.asc);
    });
  }

  QueryBuilder<MainDB, MainDB, QAfterSortBy> thenByTempMinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempMin', Sort.desc);
    });
  }
}

extension MainDBQueryWhereDistinct on QueryBuilder<MainDB, MainDB, QDistinct> {
  QueryBuilder<MainDB, MainDB, QDistinct> distinctByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feelsLike');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctByGrndLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grndLevel');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'humidity');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pressure');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctBySeaLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seaLevel');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temp');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctByTempMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tempMax');
    });
  }

  QueryBuilder<MainDB, MainDB, QDistinct> distinctByTempMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tempMin');
    });
  }
}

extension MainDBQueryProperty on QueryBuilder<MainDB, MainDB, QQueryProperty> {
  QueryBuilder<MainDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MainDB, double, QQueryOperations> feelsLikeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feelsLike');
    });
  }

  QueryBuilder<MainDB, int?, QQueryOperations> grndLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grndLevel');
    });
  }

  QueryBuilder<MainDB, int, QQueryOperations> humidityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'humidity');
    });
  }

  QueryBuilder<MainDB, int, QQueryOperations> pressureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pressure');
    });
  }

  QueryBuilder<MainDB, int?, QQueryOperations> seaLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seaLevel');
    });
  }

  QueryBuilder<MainDB, double, QQueryOperations> tempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temp');
    });
  }

  QueryBuilder<MainDB, double, QQueryOperations> tempMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempMax');
    });
  }

  QueryBuilder<MainDB, double, QQueryOperations> tempMinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempMin');
    });
  }
}
