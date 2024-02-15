// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_extra_details.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChequeExtraDetailsCollection on Isar {
  IsarCollection<ChequeExtraDetails> get chequeExtraDetails =>
      this.collection();
}

const ChequeExtraDetailsSchema = CollectionSchema(
  name: r'ChequeExtraDetails',
  id: -8638510251343542211,
  properties: {
    r'amount': PropertySchema(
      id: 0,
      name: r'amount',
      type: IsarType.double,
    ),
    r'bankName': PropertySchema(
      id: 1,
      name: r'bankName',
      type: IsarType.string,
    ),
    r'chequeDate': PropertySchema(
      id: 2,
      name: r'chequeDate',
      type: IsarType.string,
    ),
    r'chequeNumber': PropertySchema(
      id: 3,
      name: r'chequeNumber',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'paymentEntryId': PropertySchema(
      id: 5,
      name: r'paymentEntryId',
      type: IsarType.string,
    )
  },
  estimateSize: _chequeExtraDetailsEstimateSize,
  serialize: _chequeExtraDetailsSerialize,
  deserialize: _chequeExtraDetailsDeserialize,
  deserializeProp: _chequeExtraDetailsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _chequeExtraDetailsGetId,
  getLinks: _chequeExtraDetailsGetLinks,
  attach: _chequeExtraDetailsAttach,
  version: '3.1.0+1',
);

int _chequeExtraDetailsEstimateSize(
  ChequeExtraDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bankName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.chequeDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.chequeNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paymentEntryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _chequeExtraDetailsSerialize(
  ChequeExtraDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amount);
  writer.writeString(offsets[1], object.bankName);
  writer.writeString(offsets[2], object.chequeDate);
  writer.writeString(offsets[3], object.chequeNumber);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeString(offsets[5], object.paymentEntryId);
}

ChequeExtraDetails _chequeExtraDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChequeExtraDetails(
    amount: reader.readDoubleOrNull(offsets[0]),
    bankName: reader.readStringOrNull(offsets[1]),
    chequeDate: reader.readStringOrNull(offsets[2]),
    chequeNumber: reader.readStringOrNull(offsets[3]),
    id: id,
    paymentEntryId: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _chequeExtraDetailsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _chequeExtraDetailsGetId(ChequeExtraDetails object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _chequeExtraDetailsGetLinks(
    ChequeExtraDetails object) {
  return [];
}

void _chequeExtraDetailsAttach(
    IsarCollection<dynamic> col, Id id, ChequeExtraDetails object) {
  object.id = id;
}

extension ChequeExtraDetailsQueryWhereSort
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QWhere> {
  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChequeExtraDetailsQueryWhere
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QWhereClause> {
  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterWhereClause>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterWhereClause>
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

extension ChequeExtraDetailsQueryFilter
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QFilterCondition> {
  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      amountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      amountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      amountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      amountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      amountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      amountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankName',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankName',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      bankNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chequeDate',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chequeDate',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chequeDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chequeDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chequeDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chequeDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chequeDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chequeDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chequeDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chequeDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chequeDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chequeDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chequeNumber',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chequeNumber',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chequeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chequeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chequeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chequeNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chequeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chequeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chequeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chequeNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chequeNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      chequeNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chequeNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
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

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentEntryId',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentEntryId',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentEntryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentEntryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentEntryId',
        value: '',
      ));
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentEntryId',
        value: '',
      ));
    });
  }
}

extension ChequeExtraDetailsQueryObject
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QFilterCondition> {}

extension ChequeExtraDetailsQueryLinks
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QFilterCondition> {}

extension ChequeExtraDetailsQuerySortBy
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QSortBy> {
  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByBankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByBankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByChequeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeDate', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByChequeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeDate', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByChequeNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeNumber', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByChequeNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeNumber', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByPaymentEntryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      sortByPaymentEntryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.desc);
    });
  }
}

extension ChequeExtraDetailsQuerySortThenBy
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QSortThenBy> {
  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByBankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByBankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByChequeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeDate', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByChequeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeDate', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByChequeNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeNumber', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByChequeNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chequeNumber', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByPaymentEntryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.asc);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QAfterSortBy>
      thenByPaymentEntryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.desc);
    });
  }
}

extension ChequeExtraDetailsQueryWhereDistinct
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct> {
  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct>
      distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amount');
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct>
      distinctByBankName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct>
      distinctByChequeDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chequeDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct>
      distinctByChequeNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chequeNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QDistinct>
      distinctByPaymentEntryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentEntryId',
          caseSensitive: caseSensitive);
    });
  }
}

extension ChequeExtraDetailsQueryProperty
    on QueryBuilder<ChequeExtraDetails, ChequeExtraDetails, QQueryProperty> {
  QueryBuilder<ChequeExtraDetails, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChequeExtraDetails, double?, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amount');
    });
  }

  QueryBuilder<ChequeExtraDetails, String?, QQueryOperations>
      bankNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankName');
    });
  }

  QueryBuilder<ChequeExtraDetails, String?, QQueryOperations>
      chequeDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chequeDate');
    });
  }

  QueryBuilder<ChequeExtraDetails, String?, QQueryOperations>
      chequeNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chequeNumber');
    });
  }

  QueryBuilder<ChequeExtraDetails, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ChequeExtraDetails, String?, QQueryOperations>
      paymentEntryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentEntryId');
    });
  }
}
