// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_group_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMainGroupModelCollection on Isar {
  IsarCollection<MainGroupModel> get mainGroupModels => this.collection();
}

const MainGroupModelSchema = CollectionSchema(
  name: r'MainGroupModel',
  id: -6219211923592653389,
  properties: {
    r'categoryId': PropertySchema(
      id: 0,
      name: r'categoryId',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
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
    ),
    r'mainGroupId': PropertySchema(
      id: 4,
      name: r'mainGroupId',
      type: IsarType.string,
    ),
    r'mainGroupName': PropertySchema(
      id: 5,
      name: r'mainGroupName',
      type: IsarType.string,
    ),
    r'outletId': PropertySchema(
      id: 6,
      name: r'outletId',
      type: IsarType.long,
    )
  },
  estimateSize: _mainGroupModelEstimateSize,
  serialize: _mainGroupModelSerialize,
  deserialize: _mainGroupModelDeserialize,
  deserializeProp: _mainGroupModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _mainGroupModelGetId,
  getLinks: _mainGroupModelGetLinks,
  attach: _mainGroupModelAttach,
  version: '3.1.0+1',
);

int _mainGroupModelEstimateSize(
  MainGroupModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.categoryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mainGroupId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mainGroupName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mainGroupModelSerialize(
  MainGroupModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoryId);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeBool(offsets[2], object.isActive);
  writer.writeBool(offsets[3], object.isDeleted);
  writer.writeString(offsets[4], object.mainGroupId);
  writer.writeString(offsets[5], object.mainGroupName);
  writer.writeLong(offsets[6], object.outletId);
}

MainGroupModel _mainGroupModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MainGroupModel(
    categoryId: reader.readStringOrNull(offsets[0]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[2]),
    isDeleted: reader.readBoolOrNull(offsets[3]),
    mainGroupId: reader.readStringOrNull(offsets[4]),
    mainGroupName: reader.readStringOrNull(offsets[5]),
    outletId: reader.readLongOrNull(offsets[6]),
  );
  return object;
}

P _mainGroupModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mainGroupModelGetId(MainGroupModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mainGroupModelGetLinks(MainGroupModel object) {
  return [];
}

void _mainGroupModelAttach(
    IsarCollection<dynamic> col, Id id, MainGroupModel object) {
  object.id = id;
}

extension MainGroupModelQueryWhereSort
    on QueryBuilder<MainGroupModel, MainGroupModel, QWhere> {
  QueryBuilder<MainGroupModel, MainGroupModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MainGroupModelQueryWhere
    on QueryBuilder<MainGroupModel, MainGroupModel, QWhereClause> {
  QueryBuilder<MainGroupModel, MainGroupModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterWhereClause> idBetween(
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

extension MainGroupModelQueryFilter
    on QueryBuilder<MainGroupModel, MainGroupModel, QFilterCondition> {
  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainGroupName',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainGroupName',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainGroupName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mainGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mainGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainGroupName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupName',
        value: '',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      mainGroupNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainGroupName',
        value: '',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      outletIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      outletIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      outletIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterFilterCondition>
      outletIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outletId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MainGroupModelQueryObject
    on QueryBuilder<MainGroupModel, MainGroupModel, QFilterCondition> {}

extension MainGroupModelQueryLinks
    on QueryBuilder<MainGroupModel, MainGroupModel, QFilterCondition> {}

extension MainGroupModelQuerySortBy
    on QueryBuilder<MainGroupModel, MainGroupModel, QSortBy> {
  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByMainGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupName', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByMainGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupName', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }
}

extension MainGroupModelQuerySortThenBy
    on QueryBuilder<MainGroupModel, MainGroupModel, QSortThenBy> {
  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByMainGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupName', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByMainGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupName', Sort.desc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }
}

extension MainGroupModelQueryWhereDistinct
    on QueryBuilder<MainGroupModel, MainGroupModel, QDistinct> {
  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct> distinctByCategoryId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct>
      distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct> distinctByMainGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainGroupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct>
      distinctByMainGroupName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainGroupName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MainGroupModel, MainGroupModel, QDistinct> distinctByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId');
    });
  }
}

extension MainGroupModelQueryProperty
    on QueryBuilder<MainGroupModel, MainGroupModel, QQueryProperty> {
  QueryBuilder<MainGroupModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MainGroupModel, String?, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<MainGroupModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<MainGroupModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<MainGroupModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<MainGroupModel, String?, QQueryOperations>
      mainGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainGroupId');
    });
  }

  QueryBuilder<MainGroupModel, String?, QQueryOperations>
      mainGroupNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainGroupName');
    });
  }

  QueryBuilder<MainGroupModel, int?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }
}
