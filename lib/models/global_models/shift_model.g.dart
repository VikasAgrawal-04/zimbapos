// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShiftModelCollection on Isar {
  IsarCollection<ShiftModel> get shiftModels => this.collection();
}

const ShiftModelSchema = CollectionSchema(
  name: r'ShiftModel',
  id: -2048435366203876711,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'shiftEnded': PropertySchema(
      id: 1,
      name: r'shiftEnded',
      type: IsarType.bool,
    ),
    r'shiftEndedAt': PropertySchema(
      id: 2,
      name: r'shiftEndedAt',
      type: IsarType.dateTime,
    ),
    r'shiftId': PropertySchema(
      id: 3,
      name: r'shiftId',
      type: IsarType.long,
    ),
    r'shiftStartedAt': PropertySchema(
      id: 4,
      name: r'shiftStartedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 5,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _shiftModelEstimateSize,
  serialize: _shiftModelSerialize,
  deserialize: _shiftModelDeserialize,
  deserializeProp: _shiftModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _shiftModelGetId,
  getLinks: _shiftModelGetLinks,
  attach: _shiftModelAttach,
  version: '3.1.0+1',
);

int _shiftModelEstimateSize(
  ShiftModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _shiftModelSerialize(
  ShiftModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeBool(offsets[1], object.shiftEnded);
  writer.writeDateTime(offsets[2], object.shiftEndedAt);
  writer.writeLong(offsets[3], object.shiftId);
  writer.writeDateTime(offsets[4], object.shiftStartedAt);
  writer.writeString(offsets[5], object.userId);
}

ShiftModel _shiftModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShiftModel(
    id: id,
    shiftEnded: reader.readBoolOrNull(offsets[1]) ?? false,
    shiftEndedAt: reader.readDateTimeOrNull(offsets[2]),
    shiftId: reader.readLongOrNull(offsets[3]),
    shiftStartedAt: reader.readDateTimeOrNull(offsets[4]),
    userId: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _shiftModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shiftModelGetId(ShiftModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shiftModelGetLinks(ShiftModel object) {
  return [];
}

void _shiftModelAttach(IsarCollection<dynamic> col, Id id, ShiftModel object) {
  object.id = id;
}

extension ShiftModelQueryWhereSort
    on QueryBuilder<ShiftModel, ShiftModel, QWhere> {
  QueryBuilder<ShiftModel, ShiftModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ShiftModelQueryWhere
    on QueryBuilder<ShiftModel, ShiftModel, QWhereClause> {
  QueryBuilder<ShiftModel, ShiftModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterWhereClause> idBetween(
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

extension ShiftModelQueryFilter
    on QueryBuilder<ShiftModel, ShiftModel, QFilterCondition> {
  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> shiftEndedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftEnded',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftEndedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftEndedAt',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftEndedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftEndedAt',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftEndedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftEndedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftEndedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftEndedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftEndedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftEndedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftEndedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftEndedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> shiftIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftId',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftId',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> shiftIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftId',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftId',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> shiftIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftId',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> shiftIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftStartedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftStartedAt',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftStartedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftStartedAt',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftStartedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftStartedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftStartedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftStartedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftStartedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftStartedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      shiftStartedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftStartedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition> userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension ShiftModelQueryObject
    on QueryBuilder<ShiftModel, ShiftModel, QFilterCondition> {}

extension ShiftModelQueryLinks
    on QueryBuilder<ShiftModel, ShiftModel, QFilterCondition> {}

extension ShiftModelQuerySortBy
    on QueryBuilder<ShiftModel, ShiftModel, QSortBy> {
  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftEnded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEnded', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftEndedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEnded', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEndedAt', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftEndedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEndedAt', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftId', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftId', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByShiftStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftStartedAt', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy>
      sortByShiftStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftStartedAt', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension ShiftModelQuerySortThenBy
    on QueryBuilder<ShiftModel, ShiftModel, QSortThenBy> {
  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftEnded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEnded', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftEndedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEnded', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEndedAt', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftEndedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftEndedAt', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftId', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftId', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByShiftStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftStartedAt', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy>
      thenByShiftStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftStartedAt', Sort.desc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension ShiftModelQueryWhereDistinct
    on QueryBuilder<ShiftModel, ShiftModel, QDistinct> {
  QueryBuilder<ShiftModel, ShiftModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QDistinct> distinctByShiftEnded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftEnded');
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QDistinct> distinctByShiftEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftEndedAt');
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QDistinct> distinctByShiftId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftId');
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QDistinct> distinctByShiftStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftStartedAt');
    });
  }

  QueryBuilder<ShiftModel, ShiftModel, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension ShiftModelQueryProperty
    on QueryBuilder<ShiftModel, ShiftModel, QQueryProperty> {
  QueryBuilder<ShiftModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ShiftModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ShiftModel, bool, QQueryOperations> shiftEndedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftEnded');
    });
  }

  QueryBuilder<ShiftModel, DateTime?, QQueryOperations> shiftEndedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftEndedAt');
    });
  }

  QueryBuilder<ShiftModel, int?, QQueryOperations> shiftIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftId');
    });
  }

  QueryBuilder<ShiftModel, DateTime?, QQueryOperations>
      shiftStartedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftStartedAt');
    });
  }

  QueryBuilder<ShiftModel, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
