// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_category_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCustomerCategoryModelCollection on Isar {
  IsarCollection<CustomerCategoryModel> get customerCategoryModels =>
      this.collection();
}

const CustomerCategoryModelSchema = CollectionSchema(
  name: r'CustomerCategoryModel',
  id: 767588699958542475,
  properties: {
    r'custCategoryDiscount': PropertySchema(
      id: 0,
      name: r'custCategoryDiscount',
      type: IsarType.double,
    ),
    r'custCategoryId': PropertySchema(
      id: 1,
      name: r'custCategoryId',
      type: IsarType.string,
    ),
    r'custCategoryName': PropertySchema(
      id: 2,
      name: r'custCategoryName',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
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
    r'outletId': PropertySchema(
      id: 6,
      name: r'outletId',
      type: IsarType.string,
    )
  },
  estimateSize: _customerCategoryModelEstimateSize,
  serialize: _customerCategoryModelSerialize,
  deserialize: _customerCategoryModelDeserialize,
  deserializeProp: _customerCategoryModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _customerCategoryModelGetId,
  getLinks: _customerCategoryModelGetLinks,
  attach: _customerCategoryModelAttach,
  version: '3.1.0+1',
);

int _customerCategoryModelEstimateSize(
  CustomerCategoryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.custCategoryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.custCategoryName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.outletId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _customerCategoryModelSerialize(
  CustomerCategoryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.custCategoryDiscount);
  writer.writeString(offsets[1], object.custCategoryId);
  writer.writeString(offsets[2], object.custCategoryName);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeBool(offsets[4], object.isActive);
  writer.writeBool(offsets[5], object.isDeleted);
  writer.writeString(offsets[6], object.outletId);
}

CustomerCategoryModel _customerCategoryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CustomerCategoryModel(
    custCategoryDiscount: reader.readDoubleOrNull(offsets[0]),
    custCategoryId: reader.readStringOrNull(offsets[1]),
    custCategoryName: reader.readStringOrNull(offsets[2]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[4]),
    isDeleted: reader.readBoolOrNull(offsets[5]),
    outletId: reader.readStringOrNull(offsets[6]),
  );
  return object;
}

P _customerCategoryModelDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _customerCategoryModelGetId(CustomerCategoryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _customerCategoryModelGetLinks(
    CustomerCategoryModel object) {
  return [];
}

void _customerCategoryModelAttach(
    IsarCollection<dynamic> col, Id id, CustomerCategoryModel object) {
  object.id = id;
}

extension CustomerCategoryModelQueryWhereSort
    on QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QWhere> {
  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CustomerCategoryModelQueryWhere on QueryBuilder<CustomerCategoryModel,
    CustomerCategoryModel, QWhereClause> {
  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterWhereClause>
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterWhereClause>
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

extension CustomerCategoryModelQueryFilter on QueryBuilder<
    CustomerCategoryModel, CustomerCategoryModel, QFilterCondition> {
  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryDiscountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'custCategoryDiscount',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryDiscountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'custCategoryDiscount',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryDiscountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custCategoryDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryDiscountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'custCategoryDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryDiscountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'custCategoryDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryDiscountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'custCategoryDiscount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'custCategoryId',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'custCategoryId',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custCategoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'custCategoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'custCategoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'custCategoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'custCategoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'custCategoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
          QAfterFilterCondition>
      custCategoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'custCategoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
          QAfterFilterCondition>
      custCategoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'custCategoryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custCategoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'custCategoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'custCategoryName',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'custCategoryName',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'custCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'custCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'custCategoryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'custCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'custCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
          QAfterFilterCondition>
      custCategoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'custCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
          QAfterFilterCondition>
      custCategoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'custCategoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> custCategoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'custCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdEqualTo(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdGreaterThan(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdLessThan(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdBetween(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdStartsWith(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdEndsWith(
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

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
          QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
          QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel,
      QAfterFilterCondition> outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }
}

extension CustomerCategoryModelQueryObject on QueryBuilder<
    CustomerCategoryModel, CustomerCategoryModel, QFilterCondition> {}

extension CustomerCategoryModelQueryLinks on QueryBuilder<CustomerCategoryModel,
    CustomerCategoryModel, QFilterCondition> {}

extension CustomerCategoryModelQuerySortBy
    on QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QSortBy> {
  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByCustCategoryDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryDiscount', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByCustCategoryDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryDiscount', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByCustCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryId', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByCustCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryId', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByCustCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryName', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByCustCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryName', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }
}

extension CustomerCategoryModelQuerySortThenBy
    on QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QSortThenBy> {
  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByCustCategoryDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryDiscount', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByCustCategoryDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryDiscount', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByCustCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryId', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByCustCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryId', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByCustCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryName', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByCustCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custCategoryName', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }
}

extension CustomerCategoryModelQueryWhereDistinct
    on QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct> {
  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByCustCategoryDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'custCategoryDiscount');
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByCustCategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'custCategoryId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByCustCategoryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'custCategoryName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<CustomerCategoryModel, CustomerCategoryModel, QDistinct>
      distinctByOutletId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }
}

extension CustomerCategoryModelQueryProperty on QueryBuilder<
    CustomerCategoryModel, CustomerCategoryModel, QQueryProperty> {
  QueryBuilder<CustomerCategoryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CustomerCategoryModel, double?, QQueryOperations>
      custCategoryDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'custCategoryDiscount');
    });
  }

  QueryBuilder<CustomerCategoryModel, String?, QQueryOperations>
      custCategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'custCategoryId');
    });
  }

  QueryBuilder<CustomerCategoryModel, String?, QQueryOperations>
      custCategoryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'custCategoryName');
    });
  }

  QueryBuilder<CustomerCategoryModel, int, QQueryOperations>
      hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<CustomerCategoryModel, bool?, QQueryOperations>
      isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<CustomerCategoryModel, bool?, QQueryOperations>
      isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<CustomerCategoryModel, String?, QQueryOperations>
      outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }
}
