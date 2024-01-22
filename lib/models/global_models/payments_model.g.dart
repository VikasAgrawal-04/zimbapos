// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPaymentModelCollection on Isar {
  IsarCollection<PaymentModel> get paymentModels => this.collection();
}

const PaymentModelSchema = CollectionSchema(
  name: r'PaymentModel',
  id: -5459064031591241697,
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
    r'isUserCreated': PropertySchema(
      id: 2,
      name: r'isUserCreated',
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
  estimateSize: _paymentModelEstimateSize,
  serialize: _paymentModelSerialize,
  deserialize: _paymentModelDeserialize,
  deserializeProp: _paymentModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _paymentModelGetId,
  getLinks: _paymentModelGetLinks,
  attach: _paymentModelAttach,
  version: '3.1.0+1',
);

int _paymentModelEstimateSize(
  PaymentModel object,
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

void _paymentModelSerialize(
  PaymentModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isActive);
  writer.writeBool(offsets[1], object.isDeleted);
  writer.writeBool(offsets[2], object.isUserCreated);
  writer.writeString(offsets[3], object.outletId);
  writer.writeString(offsets[4], object.payCode);
  writer.writeString(offsets[5], object.payTypeName);
}

PaymentModel _paymentModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PaymentModel(
    id: id,
    isActive: reader.readBoolOrNull(offsets[0]),
    isDeleted: reader.readBoolOrNull(offsets[1]),
    isUserCreated: reader.readBoolOrNull(offsets[2]),
    outletId: reader.readStringOrNull(offsets[3]),
    payCode: reader.readStringOrNull(offsets[4]),
    payTypeName: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _paymentModelDeserializeProp<P>(
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

Id _paymentModelGetId(PaymentModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _paymentModelGetLinks(PaymentModel object) {
  return [];
}

void _paymentModelAttach(
    IsarCollection<dynamic> col, Id id, PaymentModel object) {
  object.id = id;
}

extension PaymentModelQueryWhereSort
    on QueryBuilder<PaymentModel, PaymentModel, QWhere> {
  QueryBuilder<PaymentModel, PaymentModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PaymentModelQueryWhere
    on QueryBuilder<PaymentModel, PaymentModel, QWhereClause> {
  QueryBuilder<PaymentModel, PaymentModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterWhereClause> idBetween(
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

extension PaymentModelQueryFilter
    on QueryBuilder<PaymentModel, PaymentModel, QFilterCondition> {
  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isUserCreatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isUserCreated',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isUserCreatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isUserCreated',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      isUserCreatedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isUserCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payCode',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payCode',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payTypeName',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payTypeName',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
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

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payTypeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterFilterCondition>
      payTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payTypeName',
        value: '',
      ));
    });
  }
}

extension PaymentModelQueryObject
    on QueryBuilder<PaymentModel, PaymentModel, QFilterCondition> {}

extension PaymentModelQueryLinks
    on QueryBuilder<PaymentModel, PaymentModel, QFilterCondition> {}

extension PaymentModelQuerySortBy
    on QueryBuilder<PaymentModel, PaymentModel, QSortBy> {
  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByIsUserCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUserCreated', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy>
      sortByIsUserCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUserCreated', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByPayCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByPayCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> sortByPayTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy>
      sortByPayTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.desc);
    });
  }
}

extension PaymentModelQuerySortThenBy
    on QueryBuilder<PaymentModel, PaymentModel, QSortThenBy> {
  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByIsUserCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUserCreated', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy>
      thenByIsUserCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUserCreated', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByPayCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByPayCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.desc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy> thenByPayTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.asc);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QAfterSortBy>
      thenByPayTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payTypeName', Sort.desc);
    });
  }
}

extension PaymentModelQueryWhereDistinct
    on QueryBuilder<PaymentModel, PaymentModel, QDistinct> {
  QueryBuilder<PaymentModel, PaymentModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QDistinct>
      distinctByIsUserCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isUserCreated');
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QDistinct> distinctByOutletId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QDistinct> distinctByPayCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PaymentModel, PaymentModel, QDistinct> distinctByPayTypeName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payTypeName', caseSensitive: caseSensitive);
    });
  }
}

extension PaymentModelQueryProperty
    on QueryBuilder<PaymentModel, PaymentModel, QQueryProperty> {
  QueryBuilder<PaymentModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PaymentModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<PaymentModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<PaymentModel, bool?, QQueryOperations> isUserCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isUserCreated');
    });
  }

  QueryBuilder<PaymentModel, String?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<PaymentModel, String?, QQueryOperations> payCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payCode');
    });
  }

  QueryBuilder<PaymentModel, String?, QQueryOperations> payTypeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payTypeName');
    });
  }
}
