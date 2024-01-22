// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_category_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExpenseCategoryModelCollection on Isar {
  IsarCollection<ExpenseCategoryModel> get expenseCategoryModels =>
      this.collection();
}

const ExpenseCategoryModelSchema = CollectionSchema(
  name: r'ExpenseCategoryModel',
  id: -1716336263859553928,
  properties: {
    r'expenseCategoryId': PropertySchema(
      id: 0,
      name: r'expenseCategoryId',
      type: IsarType.long,
    ),
    r'expenseCategoryName': PropertySchema(
      id: 1,
      name: r'expenseCategoryName',
      type: IsarType.string,
    ),
    r'isActive': PropertySchema(
      id: 2,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 3,
      name: r'isDeleted',
      type: IsarType.bool,
    )
  },
  estimateSize: _expenseCategoryModelEstimateSize,
  serialize: _expenseCategoryModelSerialize,
  deserialize: _expenseCategoryModelDeserialize,
  deserializeProp: _expenseCategoryModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _expenseCategoryModelGetId,
  getLinks: _expenseCategoryModelGetLinks,
  attach: _expenseCategoryModelAttach,
  version: '3.1.0+1',
);

int _expenseCategoryModelEstimateSize(
  ExpenseCategoryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.expenseCategoryName.length * 3;
  return bytesCount;
}

void _expenseCategoryModelSerialize(
  ExpenseCategoryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.expenseCategoryId);
  writer.writeString(offsets[1], object.expenseCategoryName);
  writer.writeBool(offsets[2], object.isActive);
  writer.writeBool(offsets[3], object.isDeleted);
}

ExpenseCategoryModel _expenseCategoryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExpenseCategoryModel(
    expenseCategoryId: reader.readLongOrNull(offsets[0]),
    expenseCategoryName: reader.readString(offsets[1]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[2]),
    isDeleted: reader.readBoolOrNull(offsets[3]),
  );
  return object;
}

P _expenseCategoryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _expenseCategoryModelGetId(ExpenseCategoryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _expenseCategoryModelGetLinks(
    ExpenseCategoryModel object) {
  return [];
}

void _expenseCategoryModelAttach(
    IsarCollection<dynamic> col, Id id, ExpenseCategoryModel object) {
  object.id = id;
}

extension ExpenseCategoryModelQueryWhereSort
    on QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QWhere> {
  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExpenseCategoryModelQueryWhere
    on QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QWhereClause> {
  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterWhereClause>
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterWhereClause>
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

extension ExpenseCategoryModelQueryFilter on QueryBuilder<ExpenseCategoryModel,
    ExpenseCategoryModel, QFilterCondition> {
  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expenseCategoryId',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expenseCategoryId',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expenseCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryIdGreaterThan(
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryIdLessThan(
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryIdBetween(
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expenseCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expenseCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expenseCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expenseCategoryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expenseCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expenseCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
          QAfterFilterCondition>
      expenseCategoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expenseCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
          QAfterFilterCondition>
      expenseCategoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expenseCategoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expenseCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> expenseCategoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expenseCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
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

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel,
      QAfterFilterCondition> isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }
}

extension ExpenseCategoryModelQueryObject on QueryBuilder<ExpenseCategoryModel,
    ExpenseCategoryModel, QFilterCondition> {}

extension ExpenseCategoryModelQueryLinks on QueryBuilder<ExpenseCategoryModel,
    ExpenseCategoryModel, QFilterCondition> {}

extension ExpenseCategoryModelQuerySortBy
    on QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QSortBy> {
  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByExpenseCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByExpenseCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByExpenseCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryName', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByExpenseCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryName', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }
}

extension ExpenseCategoryModelQuerySortThenBy
    on QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QSortThenBy> {
  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByExpenseCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByExpenseCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByExpenseCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryName', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByExpenseCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expenseCategoryName', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }
}

extension ExpenseCategoryModelQueryWhereDistinct
    on QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QDistinct> {
  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QDistinct>
      distinctByExpenseCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expenseCategoryId');
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QDistinct>
      distinctByExpenseCategoryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expenseCategoryName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QDistinct>
      distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<ExpenseCategoryModel, ExpenseCategoryModel, QDistinct>
      distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }
}

extension ExpenseCategoryModelQueryProperty on QueryBuilder<
    ExpenseCategoryModel, ExpenseCategoryModel, QQueryProperty> {
  QueryBuilder<ExpenseCategoryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExpenseCategoryModel, int?, QQueryOperations>
      expenseCategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expenseCategoryId');
    });
  }

  QueryBuilder<ExpenseCategoryModel, String, QQueryOperations>
      expenseCategoryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expenseCategoryName');
    });
  }

  QueryBuilder<ExpenseCategoryModel, bool?, QQueryOperations>
      isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<ExpenseCategoryModel, bool?, QQueryOperations>
      isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }
}
