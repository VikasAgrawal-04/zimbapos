// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExpenseModelCollection on Isar {
  IsarCollection<ExpenseModel> get expenseModels => this.collection();
}

const ExpenseModelSchema = CollectionSchema(
  name: r'ExpenseModel',
  id: 8411865314220037745,
  properties: {
    r'amount': PropertySchema(
      id: 0,
      name: r'amount',
      type: IsarType.long,
    ),
    r'billDate': PropertySchema(
      id: 1,
      name: r'billDate',
      type: IsarType.dateTime,
    ),
    r'billNumber': PropertySchema(
      id: 2,
      name: r'billNumber',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'entryByUserId': PropertySchema(
      id: 4,
      name: r'entryByUserId',
      type: IsarType.long,
    ),
    r'entryDatetime': PropertySchema(
      id: 5,
      name: r'entryDatetime',
      type: IsarType.dateTime,
    ),
    r'expenseCategoryId': PropertySchema(
      id: 6,
      name: r'expenseCategoryId',
      type: IsarType.long,
    ),
    r'expenseId': PropertySchema(
      id: 7,
      name: r'expenseId',
      type: IsarType.long,
    ),
    r'isActive': PropertySchema(
      id: 8,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 9,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'payMode': PropertySchema(
      id: 10,
      name: r'payMode',
      type: IsarType.string,
    ),
    r'vendorId': PropertySchema(
      id: 11,
      name: r'vendorId',
      type: IsarType.long,
    )
  },
  estimateSize: _expenseModelEstimateSize,
  serialize: _expenseModelSerialize,
  deserialize: _expenseModelDeserialize,
  deserializeProp: _expenseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _expenseModelGetId,
  getLinks: _expenseModelGetLinks,
  attach: _expenseModelAttach,
  version: '3.1.0+1',
);

int _expenseModelEstimateSize(
  ExpenseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.billNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.payMode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _expenseModelSerialize(
  ExpenseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.amount);
  writer.writeDateTime(offsets[1], object.billDate);
  writer.writeString(offsets[2], object.billNumber);
  writer.writeString(offsets[3], object.description);
  writer.writeLong(offsets[4], object.entryByUserId);
  writer.writeDateTime(offsets[5], object.entryDatetime);
  writer.writeLong(offsets[6], object.expenseCategoryId);
  writer.writeLong(offsets[7], object.expenseId);
  writer.writeBool(offsets[8], object.isActive);
  writer.writeBool(offsets[9], object.isDeleted);
  writer.writeString(offsets[10], object.payMode);
  writer.writeLong(offsets[11], object.vendorId);
}

ExpenseModel _expenseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExpenseModel(
    amount: reader.readLongOrNull(offsets[0]),
    billDate: reader.readDateTimeOrNull(offsets[1]),
    billNumber: reader.readStringOrNull(offsets[2]),
    description: reader.readStringOrNull(offsets[3]),
    entryByUserId: reader.readLongOrNull(offsets[4]),
    entryDatetime: reader.readDateTimeOrNull(offsets[5]),
    expenseCategoryId: reader.readLongOrNull(offsets[6]),
    expenseId: reader.readLongOrNull(offsets[7]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[8]),
    isDeleted: reader.readBoolOrNull(offsets[9]),
    payMode: reader.readStringOrNull(offsets[10]),
    vendorId: reader.readLongOrNull(offsets[11]),
  );
  return object;
}

P _expenseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _expenseModelGetId(ExpenseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _expenseModelGetLinks(ExpenseModel object) {
  return [];
}

void _expenseModelAttach(
    IsarCollection<dynamic> col, Id id, ExpenseModel object) {
  object.id = id;
}

extension ExpenseModelQueryWhereSort
    on QueryBuilder<ExpenseModel, ExpenseModel, QWhere> {
  QueryBuilder<ExpenseModel, ExpenseModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExpenseModelQueryWhere
    on QueryBuilder<ExpenseModel, ExpenseModel, QWhereClause> {
  QueryBuilder<ExpenseModel, ExpenseModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterWhereClause> idBetween(
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

extension ExpenseModelQueryFilter
    on QueryBuilder<ExpenseModel, ExpenseModel, QFilterCondition> {
  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      amountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      amountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition> amountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      amountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      amountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition> amountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billDate',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billDate',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billNumber',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billNumber',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      billNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'entryByUserId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'entryByUserId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryByUserIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entryByUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryByUserIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entryByUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryByUserIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entryByUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryByUserIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entryByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryDatetimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'entryDatetime',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryDatetimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'entryDatetime',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryDatetimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entryDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryDatetimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entryDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryDatetimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entryDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      entryDatetimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entryDatetime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseCategoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expenseCategoryId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseCategoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expenseCategoryId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseCategoryIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expenseCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseCategoryIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expenseCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseCategoryIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expenseCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseCategoryIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expenseCategoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expenseId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expenseId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expenseId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expenseId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expenseId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      expenseIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expenseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payMode',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payMode',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payMode',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      payModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payMode',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      vendorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      vendorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      vendorIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      vendorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vendorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      vendorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vendorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterFilterCondition>
      vendorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vendorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExpenseModelQueryObject
    on QueryBuilder<ExpenseModel, ExpenseModel, QFilterCondition> {}

extension ExpenseModelQueryLinks
    on QueryBuilder<ExpenseModel, ExpenseModel, QFilterCondition> {}

extension ExpenseModelQuerySortBy
    on QueryBuilder<ExpenseModel, ExpenseModel, QSortBy> {
  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billDate', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billDate', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      sortByBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByEntryByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryByUserId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      sortByEntryByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryByUserId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByEntryDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      sortByEntryDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      sortByExpenseCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      sortByExpenseCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByExpenseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByExpenseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByPayMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByPayModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> sortByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension ExpenseModelQuerySortThenBy
    on QueryBuilder<ExpenseModel, ExpenseModel, QSortThenBy> {
  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billDate', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billDate', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      thenByBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByEntryByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryByUserId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      thenByEntryByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryByUserId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByEntryDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      thenByEntryDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      thenByExpenseCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy>
      thenByExpenseCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByExpenseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByExpenseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByPayMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByPayModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.desc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QAfterSortBy> thenByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension ExpenseModelQueryWhereDistinct
    on QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> {
  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amount');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billDate');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct>
      distinctByEntryByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entryByUserId');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct>
      distinctByEntryDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entryDatetime');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct>
      distinctByExpenseCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expenseCategoryId');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByExpenseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expenseId');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByPayMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExpenseModel, ExpenseModel, QDistinct> distinctByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorId');
    });
  }
}

extension ExpenseModelQueryProperty
    on QueryBuilder<ExpenseModel, ExpenseModel, QQueryProperty> {
  QueryBuilder<ExpenseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExpenseModel, int?, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amount');
    });
  }

  QueryBuilder<ExpenseModel, DateTime?, QQueryOperations> billDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billDate');
    });
  }

  QueryBuilder<ExpenseModel, String?, QQueryOperations> billNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billNumber');
    });
  }

  QueryBuilder<ExpenseModel, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ExpenseModel, int?, QQueryOperations> entryByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entryByUserId');
    });
  }

  QueryBuilder<ExpenseModel, DateTime?, QQueryOperations>
      entryDatetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entryDatetime');
    });
  }

  QueryBuilder<ExpenseModel, int?, QQueryOperations>
      expenseCategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expenseCategoryId');
    });
  }

  QueryBuilder<ExpenseModel, int?, QQueryOperations> expenseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expenseId');
    });
  }

  QueryBuilder<ExpenseModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<ExpenseModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<ExpenseModel, String?, QQueryOperations> payModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payMode');
    });
  }

  QueryBuilder<ExpenseModel, int?, QQueryOperations> vendorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorId');
    });
  }
}
