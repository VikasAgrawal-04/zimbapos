// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAreasModelCollection on Isar {
  IsarCollection<AreasModel> get areasModels => this.collection();
}

const AreasModelSchema = CollectionSchema(
  name: r'AreasModel',
  id: 1045138087317396317,
  properties: {
    r'areaId': PropertySchema(
      id: 0,
      name: r'areaId',
      type: IsarType.long,
    ),
    r'areaName': PropertySchema(
      id: 1,
      name: r'areaName',
      type: IsarType.string,
    ),
    r'exchangePercent': PropertySchema(
      id: 2,
      name: r'exchangePercent',
      type: IsarType.double,
    ),
    r'isActive': PropertySchema(
      id: 3,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 4,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'outletId': PropertySchema(
      id: 5,
      name: r'outletId',
      type: IsarType.long,
    ),
    r'rateSetId': PropertySchema(
      id: 6,
      name: r'rateSetId',
      type: IsarType.long,
    )
  },
  estimateSize: _areasModelEstimateSize,
  serialize: _areasModelSerialize,
  deserialize: _areasModelDeserialize,
  deserializeProp: _areasModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _areasModelGetId,
  getLinks: _areasModelGetLinks,
  attach: _areasModelAttach,
  version: '3.1.0+1',
);

int _areasModelEstimateSize(
  AreasModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.areaName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _areasModelSerialize(
  AreasModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.areaId);
  writer.writeString(offsets[1], object.areaName);
  writer.writeDouble(offsets[2], object.exchangePercent);
  writer.writeBool(offsets[3], object.isActive);
  writer.writeBool(offsets[4], object.isDeleted);
  writer.writeLong(offsets[5], object.outletId);
  writer.writeLong(offsets[6], object.rateSetId);
}

AreasModel _areasModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AreasModel(
    areaId: reader.readLongOrNull(offsets[0]),
    areaName: reader.readStringOrNull(offsets[1]),
    exchangePercent: reader.readDoubleOrNull(offsets[2]),
    isActive: reader.readBoolOrNull(offsets[3]),
    isDeleted: reader.readBoolOrNull(offsets[4]),
    outletId: reader.readLongOrNull(offsets[5]),
    rateSetId: reader.readLongOrNull(offsets[6]),
  );
  object.id = id;
  return object;
}

P _areasModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _areasModelGetId(AreasModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _areasModelGetLinks(AreasModel object) {
  return [];
}

void _areasModelAttach(IsarCollection<dynamic> col, Id id, AreasModel object) {
  object.id = id;
}

extension AreasModelQueryWhereSort
    on QueryBuilder<AreasModel, AreasModel, QWhere> {
  QueryBuilder<AreasModel, AreasModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AreasModelQueryWhere
    on QueryBuilder<AreasModel, AreasModel, QWhereClause> {
  QueryBuilder<AreasModel, AreasModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<AreasModel, AreasModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterWhereClause> idBetween(
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

extension AreasModelQueryFilter
    on QueryBuilder<AreasModel, AreasModel, QFilterCondition> {
  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'areaId',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      areaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'areaId',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'areaId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'areaId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'areaId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'areaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'areaName',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      areaNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'areaName',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'areaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      areaNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'areaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'areaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'areaName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      areaNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'areaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'areaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'areaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> areaNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'areaName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      areaNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'areaName',
        value: '',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      areaNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'areaName',
        value: '',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      exchangePercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exchangePercent',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      exchangePercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exchangePercent',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      exchangePercentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exchangePercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      exchangePercentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exchangePercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      exchangePercentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exchangePercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      exchangePercentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exchangePercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> outletIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
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

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> outletIdLessThan(
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

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> outletIdBetween(
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

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      rateSetIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rateSetId',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      rateSetIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rateSetId',
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> rateSetIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rateSetId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition>
      rateSetIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rateSetId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> rateSetIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rateSetId',
        value: value,
      ));
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterFilterCondition> rateSetIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rateSetId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AreasModelQueryObject
    on QueryBuilder<AreasModel, AreasModel, QFilterCondition> {}

extension AreasModelQueryLinks
    on QueryBuilder<AreasModel, AreasModel, QFilterCondition> {}

extension AreasModelQuerySortBy
    on QueryBuilder<AreasModel, AreasModel, QSortBy> {
  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByAreaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaId', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByAreaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaId', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByAreaName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaName', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByAreaNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaName', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByExchangePercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangePercent', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy>
      sortByExchangePercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangePercent', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByRateSetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateSetId', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> sortByRateSetIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateSetId', Sort.desc);
    });
  }
}

extension AreasModelQuerySortThenBy
    on QueryBuilder<AreasModel, AreasModel, QSortThenBy> {
  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByAreaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaId', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByAreaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaId', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByAreaName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaName', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByAreaNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaName', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByExchangePercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangePercent', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy>
      thenByExchangePercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangePercent', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByRateSetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateSetId', Sort.asc);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QAfterSortBy> thenByRateSetIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateSetId', Sort.desc);
    });
  }
}

extension AreasModelQueryWhereDistinct
    on QueryBuilder<AreasModel, AreasModel, QDistinct> {
  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByAreaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'areaId');
    });
  }

  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByAreaName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'areaName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByExchangePercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exchangePercent');
    });
  }

  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId');
    });
  }

  QueryBuilder<AreasModel, AreasModel, QDistinct> distinctByRateSetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rateSetId');
    });
  }
}

extension AreasModelQueryProperty
    on QueryBuilder<AreasModel, AreasModel, QQueryProperty> {
  QueryBuilder<AreasModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AreasModel, int?, QQueryOperations> areaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'areaId');
    });
  }

  QueryBuilder<AreasModel, String?, QQueryOperations> areaNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'areaName');
    });
  }

  QueryBuilder<AreasModel, double?, QQueryOperations>
      exchangePercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exchangePercent');
    });
  }

  QueryBuilder<AreasModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<AreasModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<AreasModel, int?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<AreasModel, int?, QQueryOperations> rateSetIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rateSetId');
    });
  }
}
