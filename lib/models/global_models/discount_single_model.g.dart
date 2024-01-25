// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_single_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDiscountModelCollection on Isar {
  IsarCollection<DiscountModel> get discountModels => this.collection();
}

const DiscountModelSchema = CollectionSchema(
  name: r'DiscountModel',
  id: -4234387549725581625,
  properties: {
    r'couponCode': PropertySchema(
      id: 0,
      name: r'couponCode',
      type: IsarType.string,
    ),
    r'couponId': PropertySchema(
      id: 1,
      name: r'couponId',
      type: IsarType.long,
    ),
    r'couponName': PropertySchema(
      id: 2,
      name: r'couponName',
      type: IsarType.string,
    ),
    r'discountPercent': PropertySchema(
      id: 3,
      name: r'discountPercent',
      type: IsarType.long,
    ),
    r'isActive': PropertySchema(
      id: 4,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 5,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'isMultiUse': PropertySchema(
      id: 6,
      name: r'isMultiUse',
      type: IsarType.bool,
    ),
    r'maxDiscount': PropertySchema(
      id: 7,
      name: r'maxDiscount',
      type: IsarType.long,
    ),
    r'validFromDate': PropertySchema(
      id: 8,
      name: r'validFromDate',
      type: IsarType.dateTime,
    ),
    r'validToDate': PropertySchema(
      id: 9,
      name: r'validToDate',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _discountModelEstimateSize,
  serialize: _discountModelSerialize,
  deserialize: _discountModelDeserialize,
  deserializeProp: _discountModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _discountModelGetId,
  getLinks: _discountModelGetLinks,
  attach: _discountModelAttach,
  version: '3.1.0+1',
);

int _discountModelEstimateSize(
  DiscountModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.couponCode.length * 3;
  bytesCount += 3 + object.couponName.length * 3;
  return bytesCount;
}

void _discountModelSerialize(
  DiscountModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.couponCode);
  writer.writeLong(offsets[1], object.couponId);
  writer.writeString(offsets[2], object.couponName);
  writer.writeLong(offsets[3], object.discountPercent);
  writer.writeBool(offsets[4], object.isActive);
  writer.writeBool(offsets[5], object.isDeleted);
  writer.writeBool(offsets[6], object.isMultiUse);
  writer.writeLong(offsets[7], object.maxDiscount);
  writer.writeDateTime(offsets[8], object.validFromDate);
  writer.writeDateTime(offsets[9], object.validToDate);
}

DiscountModel _discountModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DiscountModel(
    couponCode: reader.readString(offsets[0]),
    couponId: reader.readLongOrNull(offsets[1]),
    couponName: reader.readString(offsets[2]),
    discountPercent: reader.readLong(offsets[3]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[4]),
    isDeleted: reader.readBoolOrNull(offsets[5]),
    isMultiUse: reader.readBool(offsets[6]),
    maxDiscount: reader.readLong(offsets[7]),
    validFromDate: reader.readDateTime(offsets[8]),
    validToDate: reader.readDateTime(offsets[9]),
  );
  return object;
}

P _discountModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _discountModelGetId(DiscountModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _discountModelGetLinks(DiscountModel object) {
  return [];
}

void _discountModelAttach(
    IsarCollection<dynamic> col, Id id, DiscountModel object) {
  object.id = id;
}

extension DiscountModelQueryWhereSort
    on QueryBuilder<DiscountModel, DiscountModel, QWhere> {
  QueryBuilder<DiscountModel, DiscountModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DiscountModelQueryWhere
    on QueryBuilder<DiscountModel, DiscountModel, QWhereClause> {
  QueryBuilder<DiscountModel, DiscountModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DiscountModel, DiscountModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterWhereClause> idBetween(
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

extension DiscountModelQueryFilter
    on QueryBuilder<DiscountModel, DiscountModel, QFilterCondition> {
  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'couponCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'couponCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'couponId',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'couponId',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponId',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'couponId',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'couponId',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'couponId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'couponName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'couponName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponName',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      couponNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponName',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      discountPercentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      discountPercentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      discountPercentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      discountPercentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountPercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
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

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      isMultiUseEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMultiUse',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      maxDiscountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxDiscount',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      maxDiscountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxDiscount',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      maxDiscountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxDiscount',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      maxDiscountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxDiscount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validFromDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validFromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validFromDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'validFromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validFromDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'validFromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validFromDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'validFromDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validToDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validToDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validToDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'validToDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validToDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'validToDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterFilterCondition>
      validToDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'validToDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DiscountModelQueryObject
    on QueryBuilder<DiscountModel, DiscountModel, QFilterCondition> {}

extension DiscountModelQueryLinks
    on QueryBuilder<DiscountModel, DiscountModel, QFilterCondition> {}

extension DiscountModelQuerySortBy
    on QueryBuilder<DiscountModel, DiscountModel, QSortBy> {
  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByCouponIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByCouponName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByCouponNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByIsMultiUseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByMaxDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByValidFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> sortByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      sortByValidToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.desc);
    });
  }
}

extension DiscountModelQuerySortThenBy
    on QueryBuilder<DiscountModel, DiscountModel, QSortThenBy> {
  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByCouponIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByCouponName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByCouponNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByIsMultiUseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByMaxDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByValidFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.desc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy> thenByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.asc);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QAfterSortBy>
      thenByValidToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.desc);
    });
  }
}

extension DiscountModelQueryWhereDistinct
    on QueryBuilder<DiscountModel, DiscountModel, QDistinct> {
  QueryBuilder<DiscountModel, DiscountModel, QDistinct> distinctByCouponCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct> distinctByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponId');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct> distinctByCouponName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct>
      distinctByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountPercent');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct> distinctByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMultiUse');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct>
      distinctByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxDiscount');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct>
      distinctByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validFromDate');
    });
  }

  QueryBuilder<DiscountModel, DiscountModel, QDistinct>
      distinctByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validToDate');
    });
  }
}

extension DiscountModelQueryProperty
    on QueryBuilder<DiscountModel, DiscountModel, QQueryProperty> {
  QueryBuilder<DiscountModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DiscountModel, String, QQueryOperations> couponCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponCode');
    });
  }

  QueryBuilder<DiscountModel, int?, QQueryOperations> couponIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponId');
    });
  }

  QueryBuilder<DiscountModel, String, QQueryOperations> couponNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponName');
    });
  }

  QueryBuilder<DiscountModel, int, QQueryOperations> discountPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountPercent');
    });
  }

  QueryBuilder<DiscountModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<DiscountModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<DiscountModel, bool, QQueryOperations> isMultiUseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMultiUse');
    });
  }

  QueryBuilder<DiscountModel, int, QQueryOperations> maxDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxDiscount');
    });
  }

  QueryBuilder<DiscountModel, DateTime, QQueryOperations>
      validFromDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validFromDate');
    });
  }

  QueryBuilder<DiscountModel, DateTime, QQueryOperations>
      validToDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validToDate');
    });
  }
}
