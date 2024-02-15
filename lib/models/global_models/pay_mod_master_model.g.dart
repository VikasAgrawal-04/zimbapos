// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_mod_master_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPayModMasterModelCollection on Isar {
  IsarCollection<PayModMasterModel> get payModMasterModels => this.collection();
}

const PayModMasterModelSchema = CollectionSchema(
  name: r'PayModMasterModel',
  id: 3199667239010917448,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isActive': PropertySchema(
      id: 1,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 2,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'outletId': PropertySchema(
      id: 3,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'payCode': PropertySchema(
      id: 4,
      name: r'payCode',
      type: IsarType.string,
    ),
    r'payTypeName': PropertySchema(
      id: 5,
      name: r'payTypeName',
      type: IsarType.string,
    )
  },
  estimateSize: _payModMasterModelEstimateSize,
  serialize: _payModMasterModelSerialize,
  deserialize: _payModMasterModelDeserialize,
  deserializeProp: _payModMasterModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _payModMasterModelGetId,
  getLinks: _payModMasterModelGetLinks,
  attach: _payModMasterModelAttach,
  version: '3.1.0+1',
);

int _payModMasterModelEstimateSize(
  PayModMasterModel object,
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
  {
    final value = object.payCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.payTypeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _payModMasterModelSerialize(
  PayModMasterModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeBool(offsets[1], object.isActive);
  writer.writeBool(offsets[2], object.isDeleted);
  writer.writeString(offsets[3], object.outletId);
  writer.writeString(offsets[4], object.payCode);
  writer.writeString(offsets[5], object.payTypeName);
}

PayModMasterModel _payModMasterModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PayModMasterModel(
    id: id,
    isActive: reader.readBoolOrNull(offsets[1]),
    isDeleted: reader.readBoolOrNull(offsets[2]),
    outletId: reader.readStringOrNull(offsets[3]),
    payCode: reader.readStringOrNull(offsets[4]),
    payTypeName: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _payModMasterModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _payModMasterModelGetId(PayModMasterModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _payModMasterModelGetLinks(
    PayModMasterModel object) {
  return [];
}

void _payModMasterModelAttach(
    IsarCollection<dynamic> col, Id id, PayModMasterModel object) {
  object.id = id;
}

extension PayModMasterModelQueryWhereSort
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QWhere> {
  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PayModMasterModelQueryWhere
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QWhereClause> {
  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterWhereClause>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterWhereClause>
      idBetween(
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

extension PayModMasterModelQueryFilter
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QFilterCondition> {
  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      hashCodeBetween(
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdEqualTo(
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdBetween(
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
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

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payCode',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payCode',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payTypeName',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payTypeName',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payTypeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterFilterCondition>
      payTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payTypeName',
        value: '',
      ));
    });
  }
}

extension PayModMasterModelQueryObject
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QFilterCondition> {}

extension PayModMasterModelQueryLinks
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QFilterCondition> {}

extension PayModMasterModelQuerySortBy
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QSortBy> {
  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByPayCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByPayCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByPayTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      sortByPayTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.desc);
    });
  }
}

extension PayModMasterModelQuerySortThenBy
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QSortThenBy> {
  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByPayCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByPayCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.desc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByPayTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.asc);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QAfterSortBy>
      thenByPayTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.desc);
    });
  }
}

extension PayModMasterModelQueryWhereDistinct
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct> {
  QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct>
      distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct>
      distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct>
      distinctByOutletId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct>
      distinctByPayCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PayModMasterModel, PayModMasterModel, QDistinct>
      distinctByPayTypeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payTypeName', caseSensitive: caseSensitive);
    });
  }
}

extension PayModMasterModelQueryProperty
    on QueryBuilder<PayModMasterModel, PayModMasterModel, QQueryProperty> {
  QueryBuilder<PayModMasterModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PayModMasterModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<PayModMasterModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<PayModMasterModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<PayModMasterModel, String?, QQueryOperations>
      outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<PayModMasterModel, String?, QQueryOperations> payCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payCode');
    });
  }

  QueryBuilder<PayModMasterModel, String?, QQueryOperations>
      payTypeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payTypeName');
    });
  }
}
