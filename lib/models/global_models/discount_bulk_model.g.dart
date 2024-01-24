// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_bulk_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBulkDiscCollection on Isar {
  IsarCollection<BulkDisc> get bulkDiscs => this.collection();
}

const BulkDiscSchema = CollectionSchema(
  name: r'BulkDisc',
  id: -8941873212173674202,
  properties: {
    r'couponCode': PropertySchema(
      id: 0,
      name: r'couponCode',
      type: IsarType.string,
    ),
    r'couponGenAmount': PropertySchema(
      id: 1,
      name: r'couponGenAmount',
      type: IsarType.long,
    ),
    r'couponId': PropertySchema(
      id: 2,
      name: r'couponId',
      type: IsarType.long,
    ),
    r'couponName': PropertySchema(
      id: 3,
      name: r'couponName',
      type: IsarType.string,
    ),
    r'discountPercent': PropertySchema(
      id: 4,
      name: r'discountPercent',
      type: IsarType.long,
    ),
    r'isActive': PropertySchema(
      id: 5,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 6,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'isMultiUse': PropertySchema(
      id: 7,
      name: r'isMultiUse',
      type: IsarType.bool,
    ),
    r'maxDiscount': PropertySchema(
      id: 8,
      name: r'maxDiscount',
      type: IsarType.long,
    ),
    r'validFromDate': PropertySchema(
      id: 9,
      name: r'validFromDate',
      type: IsarType.dateTime,
    ),
    r'validToDate': PropertySchema(
      id: 10,
      name: r'validToDate',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _bulkDiscEstimateSize,
  serialize: _bulkDiscSerialize,
  deserialize: _bulkDiscDeserialize,
  deserializeProp: _bulkDiscDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _bulkDiscGetId,
  getLinks: _bulkDiscGetLinks,
  attach: _bulkDiscAttach,
  version: '3.1.0+1',
);

int _bulkDiscEstimateSize(
  BulkDisc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.couponCode.length * 3;
  bytesCount += 3 + object.couponName.length * 3;
  return bytesCount;
}

void _bulkDiscSerialize(
  BulkDisc object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.couponCode);
  writer.writeLong(offsets[1], object.couponGenAmount);
  writer.writeLong(offsets[2], object.couponId);
  writer.writeString(offsets[3], object.couponName);
  writer.writeLong(offsets[4], object.discountPercent);
  writer.writeBool(offsets[5], object.isActive);
  writer.writeBool(offsets[6], object.isDeleted);
  writer.writeBool(offsets[7], object.isMultiUse);
  writer.writeLong(offsets[8], object.maxDiscount);
  writer.writeDateTime(offsets[9], object.validFromDate);
  writer.writeDateTime(offsets[10], object.validToDate);
}

BulkDisc _bulkDiscDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BulkDisc(
    couponCode: reader.readString(offsets[0]),
    couponGenAmount: reader.readLong(offsets[1]),
    couponId: reader.readLongOrNull(offsets[2]),
    couponName: reader.readString(offsets[3]),
    discountPercent: reader.readLong(offsets[4]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[5]),
    isDeleted: reader.readBoolOrNull(offsets[6]),
    isMultiUse: reader.readBool(offsets[7]),
    maxDiscount: reader.readLong(offsets[8]),
    validFromDate: reader.readDateTime(offsets[9]),
    validToDate: reader.readDateTime(offsets[10]),
  );
  return object;
}

P _bulkDiscDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    case 10:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bulkDiscGetId(BulkDisc object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bulkDiscGetLinks(BulkDisc object) {
  return [];
}

void _bulkDiscAttach(IsarCollection<dynamic> col, Id id, BulkDisc object) {
  object.id = id;
}

extension BulkDiscQueryWhereSort on QueryBuilder<BulkDisc, BulkDisc, QWhere> {
  QueryBuilder<BulkDisc, BulkDisc, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BulkDiscQueryWhere on QueryBuilder<BulkDisc, BulkDisc, QWhereClause> {
  QueryBuilder<BulkDisc, BulkDisc, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterWhereClause> idBetween(
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

extension BulkDiscQueryFilter
    on QueryBuilder<BulkDisc, BulkDisc, QFilterCondition> {
  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeEqualTo(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeGreaterThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeBetween(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeStartsWith(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeEndsWith(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'couponCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      couponCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      couponGenAmountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponGenAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      couponGenAmountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'couponGenAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      couponGenAmountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'couponGenAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      couponGenAmountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'couponGenAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'couponId',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'couponId',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponId',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponIdGreaterThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponIdLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponIdBetween(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameEqualTo(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameGreaterThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameBetween(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameStartsWith(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameEndsWith(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'couponName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> couponNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponName',
        value: '',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      couponNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponName',
        value: '',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
      discountPercentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> idBetween(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> isMultiUseEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMultiUse',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> maxDiscountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxDiscount',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> maxDiscountLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> maxDiscountBetween(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> validFromDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validFromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> validFromDateLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> validFromDateBetween(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> validToDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validToDate',
        value: value,
      ));
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition>
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> validToDateLessThan(
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

  QueryBuilder<BulkDisc, BulkDisc, QAfterFilterCondition> validToDateBetween(
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

extension BulkDiscQueryObject
    on QueryBuilder<BulkDisc, BulkDisc, QFilterCondition> {}

extension BulkDiscQueryLinks
    on QueryBuilder<BulkDisc, BulkDisc, QFilterCondition> {}

extension BulkDiscQuerySortBy on QueryBuilder<BulkDisc, BulkDisc, QSortBy> {
  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponGenAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponGenAmount', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponGenAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponGenAmount', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByCouponNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByIsMultiUseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByMaxDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByValidFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> sortByValidToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.desc);
    });
  }
}

extension BulkDiscQuerySortThenBy
    on QueryBuilder<BulkDisc, BulkDisc, QSortThenBy> {
  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponGenAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponGenAmount', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponGenAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponGenAmount', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByCouponNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByIsMultiUseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByMaxDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByValidFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.desc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.asc);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QAfterSortBy> thenByValidToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.desc);
    });
  }
}

extension BulkDiscQueryWhereDistinct
    on QueryBuilder<BulkDisc, BulkDisc, QDistinct> {
  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByCouponCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByCouponGenAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponGenAmount');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponId');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByCouponName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountPercent');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMultiUse');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxDiscount');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validFromDate');
    });
  }

  QueryBuilder<BulkDisc, BulkDisc, QDistinct> distinctByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validToDate');
    });
  }
}

extension BulkDiscQueryProperty
    on QueryBuilder<BulkDisc, BulkDisc, QQueryProperty> {
  QueryBuilder<BulkDisc, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BulkDisc, String, QQueryOperations> couponCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponCode');
    });
  }

  QueryBuilder<BulkDisc, int, QQueryOperations> couponGenAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponGenAmount');
    });
  }

  QueryBuilder<BulkDisc, int?, QQueryOperations> couponIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponId');
    });
  }

  QueryBuilder<BulkDisc, String, QQueryOperations> couponNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponName');
    });
  }

  QueryBuilder<BulkDisc, int, QQueryOperations> discountPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountPercent');
    });
  }

  QueryBuilder<BulkDisc, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<BulkDisc, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<BulkDisc, bool, QQueryOperations> isMultiUseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMultiUse');
    });
  }

  QueryBuilder<BulkDisc, int, QQueryOperations> maxDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxDiscount');
    });
  }

  QueryBuilder<BulkDisc, DateTime, QQueryOperations> validFromDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validFromDate');
    });
  }

  QueryBuilder<BulkDisc, DateTime, QQueryOperations> validToDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validToDate');
    });
  }
}
