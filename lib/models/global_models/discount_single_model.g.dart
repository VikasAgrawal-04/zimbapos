// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_single_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSingleDiscCollection on Isar {
  IsarCollection<SingleDisc> get singleDiscs => this.collection();
}

const SingleDiscSchema = CollectionSchema(
  name: r'SingleDisc',
  id: 3188239032480374128,
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
  estimateSize: _singleDiscEstimateSize,
  serialize: _singleDiscSerialize,
  deserialize: _singleDiscDeserialize,
  deserializeProp: _singleDiscDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _singleDiscGetId,
  getLinks: _singleDiscGetLinks,
  attach: _singleDiscAttach,
  version: '3.1.0+1',
);

int _singleDiscEstimateSize(
  SingleDisc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.couponCode.length * 3;
  bytesCount += 3 + object.couponName.length * 3;
  return bytesCount;
}

void _singleDiscSerialize(
  SingleDisc object,
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

SingleDisc _singleDiscDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SingleDisc(
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

P _singleDiscDeserializeProp<P>(
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

Id _singleDiscGetId(SingleDisc object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _singleDiscGetLinks(SingleDisc object) {
  return [];
}

void _singleDiscAttach(IsarCollection<dynamic> col, Id id, SingleDisc object) {
  object.id = id;
}

extension SingleDiscQueryWhereSort
    on QueryBuilder<SingleDisc, SingleDisc, QWhere> {
  QueryBuilder<SingleDisc, SingleDisc, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SingleDiscQueryWhere
    on QueryBuilder<SingleDisc, SingleDisc, QWhereClause> {
  QueryBuilder<SingleDisc, SingleDisc, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterWhereClause> idBetween(
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

extension SingleDiscQueryFilter
    on QueryBuilder<SingleDisc, SingleDisc, QFilterCondition> {
  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponCodeEqualTo(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponCodeBetween(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponCodeMatches(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'couponId',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'couponId',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponId',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponIdLessThan(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponIdBetween(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponNameEqualTo(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponNameBetween(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> couponNameMatches(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponName',
        value: '',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      couponNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponName',
        value: '',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      discountPercentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition> isMultiUseEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMultiUse',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      maxDiscountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxDiscount',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      validFromDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validFromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
      validToDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validToDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

  QueryBuilder<SingleDisc, SingleDisc, QAfterFilterCondition>
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

extension SingleDiscQueryObject
    on QueryBuilder<SingleDisc, SingleDisc, QFilterCondition> {}

extension SingleDiscQueryLinks
    on QueryBuilder<SingleDisc, SingleDisc, QFilterCondition> {}

extension SingleDiscQuerySortBy
    on QueryBuilder<SingleDisc, SingleDisc, QSortBy> {
  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByCouponIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByCouponName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByCouponNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy>
      sortByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByIsMultiUseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByMaxDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByValidFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> sortByValidToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.desc);
    });
  }
}

extension SingleDiscQuerySortThenBy
    on QueryBuilder<SingleDisc, SingleDisc, QSortThenBy> {
  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByCouponIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponId', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByCouponName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByCouponNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponName', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy>
      thenByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByIsMultiUseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiUse', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByMaxDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDiscount', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByValidFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validFromDate', Sort.desc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.asc);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QAfterSortBy> thenByValidToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validToDate', Sort.desc);
    });
  }
}

extension SingleDiscQueryWhereDistinct
    on QueryBuilder<SingleDisc, SingleDisc, QDistinct> {
  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByCouponCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByCouponId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponId');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByCouponName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountPercent');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByIsMultiUse() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMultiUse');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByMaxDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxDiscount');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByValidFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validFromDate');
    });
  }

  QueryBuilder<SingleDisc, SingleDisc, QDistinct> distinctByValidToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validToDate');
    });
  }
}

extension SingleDiscQueryProperty
    on QueryBuilder<SingleDisc, SingleDisc, QQueryProperty> {
  QueryBuilder<SingleDisc, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SingleDisc, String, QQueryOperations> couponCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponCode');
    });
  }

  QueryBuilder<SingleDisc, int?, QQueryOperations> couponIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponId');
    });
  }

  QueryBuilder<SingleDisc, String, QQueryOperations> couponNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponName');
    });
  }

  QueryBuilder<SingleDisc, int, QQueryOperations> discountPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountPercent');
    });
  }

  QueryBuilder<SingleDisc, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<SingleDisc, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<SingleDisc, bool, QQueryOperations> isMultiUseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMultiUse');
    });
  }

  QueryBuilder<SingleDisc, int, QQueryOperations> maxDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxDiscount');
    });
  }

  QueryBuilder<SingleDisc, DateTime, QQueryOperations> validFromDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validFromDate');
    });
  }

  QueryBuilder<SingleDisc, DateTime, QQueryOperations> validToDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validToDate');
    });
  }
}
