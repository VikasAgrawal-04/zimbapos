// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_sets_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRateSetsModelCollection on Isar {
  IsarCollection<RateSetsModel> get rateSetsModels => this.collection();
}

const RateSetsModelSchema = CollectionSchema(
  name: r'RateSetsModel',
  id: -1370270654661152312,
  properties: {
    r'isActive': PropertySchema(
      id: 0,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 1,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'outletId': PropertySchema(
      id: 2,
      name: r'outletId',
      type: IsarType.long,
    ),
    r'ratesetId': PropertySchema(
      id: 3,
      name: r'ratesetId',
      type: IsarType.long,
    ),
    r'ratesetName': PropertySchema(
      id: 4,
      name: r'ratesetName',
      type: IsarType.string,
    )
  },
  estimateSize: _rateSetsModelEstimateSize,
  serialize: _rateSetsModelSerialize,
  deserialize: _rateSetsModelDeserialize,
  deserializeProp: _rateSetsModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _rateSetsModelGetId,
  getLinks: _rateSetsModelGetLinks,
  attach: _rateSetsModelAttach,
  version: '3.1.0+1',
);

int _rateSetsModelEstimateSize(
  RateSetsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.ratesetName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _rateSetsModelSerialize(
  RateSetsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isActive);
  writer.writeBool(offsets[1], object.isDeleted);
  writer.writeLong(offsets[2], object.outletId);
  writer.writeLong(offsets[3], object.ratesetId);
  writer.writeString(offsets[4], object.ratesetName);
}

RateSetsModel _rateSetsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RateSetsModel(
    ratesetId: reader.readLongOrNull(offsets[3]),
    ratesetName: reader.readStringOrNull(offsets[4]),
  );
  object.id = id;
  object.isActive = reader.readBoolOrNull(offsets[0]);
  object.isDeleted = reader.readBoolOrNull(offsets[1]);
  object.outletId = reader.readLongOrNull(offsets[2]);
  return object;
}

P _rateSetsModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rateSetsModelGetId(RateSetsModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rateSetsModelGetLinks(RateSetsModel object) {
  return [];
}

void _rateSetsModelAttach(
    IsarCollection<dynamic> col, Id id, RateSetsModel object) {
  object.id = id;
}

extension RateSetsModelQueryWhereSort
    on QueryBuilder<RateSetsModel, RateSetsModel, QWhere> {
  QueryBuilder<RateSetsModel, RateSetsModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RateSetsModelQueryWhere
    on QueryBuilder<RateSetsModel, RateSetsModel, QWhereClause> {
  QueryBuilder<RateSetsModel, RateSetsModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterWhereClause> idBetween(
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

extension RateSetsModelQueryFilter
    on QueryBuilder<RateSetsModel, RateSetsModel, QFilterCondition> {
  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
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

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      outletIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      outletIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      outletIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      outletIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outletId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ratesetId',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ratesetId',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratesetId',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ratesetId',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ratesetId',
        value: value,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ratesetId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ratesetName',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ratesetName',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratesetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ratesetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ratesetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ratesetName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ratesetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ratesetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ratesetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ratesetName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratesetName',
        value: '',
      ));
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterFilterCondition>
      ratesetNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ratesetName',
        value: '',
      ));
    });
  }
}

extension RateSetsModelQueryObject
    on QueryBuilder<RateSetsModel, RateSetsModel, QFilterCondition> {}

extension RateSetsModelQueryLinks
    on QueryBuilder<RateSetsModel, RateSetsModel, QFilterCondition> {}

extension RateSetsModelQuerySortBy
    on QueryBuilder<RateSetsModel, RateSetsModel, QSortBy> {
  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> sortByRatesetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetId', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      sortByRatesetIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetId', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> sortByRatesetName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetName', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      sortByRatesetNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetName', Sort.desc);
    });
  }
}

extension RateSetsModelQuerySortThenBy
    on QueryBuilder<RateSetsModel, RateSetsModel, QSortThenBy> {
  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenByRatesetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetId', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      thenByRatesetIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetId', Sort.desc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy> thenByRatesetName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetName', Sort.asc);
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QAfterSortBy>
      thenByRatesetNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ratesetName', Sort.desc);
    });
  }
}

extension RateSetsModelQueryWhereDistinct
    on QueryBuilder<RateSetsModel, RateSetsModel, QDistinct> {
  QueryBuilder<RateSetsModel, RateSetsModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QDistinct> distinctByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId');
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QDistinct> distinctByRatesetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ratesetId');
    });
  }

  QueryBuilder<RateSetsModel, RateSetsModel, QDistinct> distinctByRatesetName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ratesetName', caseSensitive: caseSensitive);
    });
  }
}

extension RateSetsModelQueryProperty
    on QueryBuilder<RateSetsModel, RateSetsModel, QQueryProperty> {
  QueryBuilder<RateSetsModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RateSetsModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<RateSetsModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<RateSetsModel, int?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<RateSetsModel, int?, QQueryOperations> ratesetIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ratesetId');
    });
  }

  QueryBuilder<RateSetsModel, String?, QQueryOperations> ratesetNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ratesetName');
    });
  }
}
