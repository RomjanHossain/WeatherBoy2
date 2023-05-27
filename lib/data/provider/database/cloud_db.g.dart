// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCloudsDBCollection on Isar {
  IsarCollection<CloudsDB> get cloudsDBs => this.collection();
}

const CloudsDBSchema = CollectionSchema(
  name: r'CloudsDB',
  id: -2185920990624595277,
  properties: {
    r'all': PropertySchema(
      id: 0,
      name: r'all',
      type: IsarType.long,
    )
  },
  estimateSize: _cloudsDBEstimateSize,
  serialize: _cloudsDBSerialize,
  deserialize: _cloudsDBDeserialize,
  deserializeProp: _cloudsDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cloudsDBGetId,
  getLinks: _cloudsDBGetLinks,
  attach: _cloudsDBAttach,
  version: '3.1.0+1',
);

int _cloudsDBEstimateSize(
  CloudsDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _cloudsDBSerialize(
  CloudsDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.all);
}

CloudsDB _cloudsDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CloudsDB(
    all: reader.readLong(offsets[0]),
  );
  object.id = id;
  return object;
}

P _cloudsDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cloudsDBGetId(CloudsDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cloudsDBGetLinks(CloudsDB object) {
  return [];
}

void _cloudsDBAttach(IsarCollection<dynamic> col, Id id, CloudsDB object) {
  object.id = id;
}

extension CloudsDBQueryWhereSort on QueryBuilder<CloudsDB, CloudsDB, QWhere> {
  QueryBuilder<CloudsDB, CloudsDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CloudsDBQueryWhere on QueryBuilder<CloudsDB, CloudsDB, QWhereClause> {
  QueryBuilder<CloudsDB, CloudsDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CloudsDB, CloudsDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterWhereClause> idBetween(
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

extension CloudsDBQueryFilter
    on QueryBuilder<CloudsDB, CloudsDB, QFilterCondition> {
  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> allEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'all',
        value: value,
      ));
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> allGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'all',
        value: value,
      ));
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> allLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'all',
        value: value,
      ));
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> allBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'all',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CloudsDB, CloudsDB, QAfterFilterCondition> idBetween(
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
}

extension CloudsDBQueryObject
    on QueryBuilder<CloudsDB, CloudsDB, QFilterCondition> {}

extension CloudsDBQueryLinks
    on QueryBuilder<CloudsDB, CloudsDB, QFilterCondition> {}

extension CloudsDBQuerySortBy on QueryBuilder<CloudsDB, CloudsDB, QSortBy> {
  QueryBuilder<CloudsDB, CloudsDB, QAfterSortBy> sortByAll() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.asc);
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterSortBy> sortByAllDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.desc);
    });
  }
}

extension CloudsDBQuerySortThenBy
    on QueryBuilder<CloudsDB, CloudsDB, QSortThenBy> {
  QueryBuilder<CloudsDB, CloudsDB, QAfterSortBy> thenByAll() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.asc);
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterSortBy> thenByAllDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.desc);
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CloudsDB, CloudsDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CloudsDBQueryWhereDistinct
    on QueryBuilder<CloudsDB, CloudsDB, QDistinct> {
  QueryBuilder<CloudsDB, CloudsDB, QDistinct> distinctByAll() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'all');
    });
  }
}

extension CloudsDBQueryProperty
    on QueryBuilder<CloudsDB, CloudsDB, QQueryProperty> {
  QueryBuilder<CloudsDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CloudsDB, int, QQueryOperations> allProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'all');
    });
  }
}
