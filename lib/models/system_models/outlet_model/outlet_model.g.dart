// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOutletModelCollection on Isar {
  IsarCollection<OutletModel> get outletModels => this.collection();
}

const OutletModelSchema = CollectionSchema(
  name: r'OutletModel',
  id: -2375679898496777153,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'outletId': PropertySchema(
      id: 1,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'outletType': PropertySchema(
      id: 2,
      name: r'outletType',
      type: IsarType.byte,
      enumMap: _OutletModeloutletTypeEnumValueMap,
    )
  },
  estimateSize: _outletModelEstimateSize,
  serialize: _outletModelSerialize,
  deserialize: _outletModelDeserialize,
  deserializeProp: _outletModelDeserializeProp,
  idName: r'isarid',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _outletModelGetId,
  getLinks: _outletModelGetLinks,
  attach: _outletModelAttach,
  version: '3.1.0+1',
);

int _outletModelEstimateSize(
  OutletModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.outletId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _outletModelSerialize(
  OutletModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeString(offsets[1], object.outletId);
  writer.writeByte(offsets[2], object.outletType.index);
}

OutletModel _outletModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OutletModel(
    isarid: id,
    outletId: reader.readStringOrNull(offsets[1]),
    outletType:
        _OutletModeloutletTypeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
            OutletType.restaurant,
  );
  return object;
}

P _outletModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (_OutletModeloutletTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          OutletType.restaurant) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _OutletModeloutletTypeEnumValueMap = {
  'restaurant': 0,
  'cloudKitchen': 1,
};
const _OutletModeloutletTypeValueEnumMap = {
  0: OutletType.restaurant,
  1: OutletType.cloudKitchen,
};

Id _outletModelGetId(OutletModel object) {
  return object.isarid;
}

List<IsarLinkBase<dynamic>> _outletModelGetLinks(OutletModel object) {
  return [];
}

void _outletModelAttach(
    IsarCollection<dynamic> col, Id id, OutletModel object) {
  object.isarid = id;
}

extension OutletModelQueryWhereSort
    on QueryBuilder<OutletModel, OutletModel, QWhere> {
  QueryBuilder<OutletModel, OutletModel, QAfterWhere> anyIsarid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OutletModelQueryWhere
    on QueryBuilder<OutletModel, OutletModel, QWhereClause> {
  QueryBuilder<OutletModel, OutletModel, QAfterWhereClause> isaridEqualTo(
      Id isarid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarid,
        upper: isarid,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterWhereClause> isaridNotEqualTo(
      Id isarid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarid, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarid, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarid, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarid, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterWhereClause> isaridGreaterThan(
      Id isarid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarid, includeLower: include),
      );
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterWhereClause> isaridLessThan(
      Id isarid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarid, includeUpper: include),
      );
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterWhereClause> isaridBetween(
    Id lowerIsarid,
    Id upperIsarid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarid,
        includeLower: includeLower,
        upper: upperIsarid,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OutletModelQueryFilter
    on QueryBuilder<OutletModel, OutletModel, QFilterCondition> {
  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> isaridEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarid',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      isaridGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarid',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> isaridLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarid',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> isaridBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> outletIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> outletIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outletId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition> outletIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletTypeEqualTo(OutletType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletType',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletTypeGreaterThan(
    OutletType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outletType',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletTypeLessThan(
    OutletType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outletType',
        value: value,
      ));
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterFilterCondition>
      outletTypeBetween(
    OutletType lower,
    OutletType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outletType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OutletModelQueryObject
    on QueryBuilder<OutletModel, OutletModel, QFilterCondition> {}

extension OutletModelQueryLinks
    on QueryBuilder<OutletModel, OutletModel, QFilterCondition> {}

extension OutletModelQuerySortBy
    on QueryBuilder<OutletModel, OutletModel, QSortBy> {
  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> sortByOutletType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletType', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> sortByOutletTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletType', Sort.desc);
    });
  }
}

extension OutletModelQuerySortThenBy
    on QueryBuilder<OutletModel, OutletModel, QSortThenBy> {
  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByIsarid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarid', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByIsaridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarid', Sort.desc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByOutletType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletType', Sort.asc);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QAfterSortBy> thenByOutletTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletType', Sort.desc);
    });
  }
}

extension OutletModelQueryWhereDistinct
    on QueryBuilder<OutletModel, OutletModel, QDistinct> {
  QueryBuilder<OutletModel, OutletModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<OutletModel, OutletModel, QDistinct> distinctByOutletId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OutletModel, OutletModel, QDistinct> distinctByOutletType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletType');
    });
  }
}

extension OutletModelQueryProperty
    on QueryBuilder<OutletModel, OutletModel, QQueryProperty> {
  QueryBuilder<OutletModel, int, QQueryOperations> isaridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarid');
    });
  }

  QueryBuilder<OutletModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<OutletModel, String?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<OutletModel, OutletType, QQueryOperations> outletTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletType');
    });
  }
}
