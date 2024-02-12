// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_screen_function_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserRoleScreenFunctionModelCollection on Isar {
  IsarCollection<UserRoleScreenFunctionModel>
      get userRoleScreenFunctionModels => this.collection();
}

const UserRoleScreenFunctionModelSchema = CollectionSchema(
  name: r'UserRoleScreenFunctionModel',
  id: -6946555077325583465,
  properties: {
    r'canChange': PropertySchema(
      id: 0,
      name: r'canChange',
      type: IsarType.bool,
    ),
    r'canView': PropertySchema(
      id: 1,
      name: r'canView',
      type: IsarType.bool,
    ),
    r'outletId': PropertySchema(
      id: 2,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'roleId': PropertySchema(
      id: 3,
      name: r'roleId',
      type: IsarType.string,
    ),
    r'screenFunctionId': PropertySchema(
      id: 4,
      name: r'screenFunctionId',
      type: IsarType.string,
    ),
    r'screenFunctionName': PropertySchema(
      id: 5,
      name: r'screenFunctionName',
      type: IsarType.string,
    )
  },
  estimateSize: _userRoleScreenFunctionModelEstimateSize,
  serialize: _userRoleScreenFunctionModelSerialize,
  deserialize: _userRoleScreenFunctionModelDeserialize,
  deserializeProp: _userRoleScreenFunctionModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userRoleScreenFunctionModelGetId,
  getLinks: _userRoleScreenFunctionModelGetLinks,
  attach: _userRoleScreenFunctionModelAttach,
  version: '3.1.0+1',
);

int _userRoleScreenFunctionModelEstimateSize(
  UserRoleScreenFunctionModel object,
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
    final value = object.roleId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.screenFunctionId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.screenFunctionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userRoleScreenFunctionModelSerialize(
  UserRoleScreenFunctionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.canChange);
  writer.writeBool(offsets[1], object.canView);
  writer.writeString(offsets[2], object.outletId);
  writer.writeString(offsets[3], object.roleId);
  writer.writeString(offsets[4], object.screenFunctionId);
  writer.writeString(offsets[5], object.screenFunctionName);
}

UserRoleScreenFunctionModel _userRoleScreenFunctionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserRoleScreenFunctionModel(
    canChange: reader.readBoolOrNull(offsets[0]),
    canView: reader.readBoolOrNull(offsets[1]),
    id: id,
    outletId: reader.readStringOrNull(offsets[2]),
    roleId: reader.readStringOrNull(offsets[3]),
    screenFunctionId: reader.readStringOrNull(offsets[4]),
    screenFunctionName: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _userRoleScreenFunctionModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
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

Id _userRoleScreenFunctionModelGetId(UserRoleScreenFunctionModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userRoleScreenFunctionModelGetLinks(
    UserRoleScreenFunctionModel object) {
  return [];
}

void _userRoleScreenFunctionModelAttach(
    IsarCollection<dynamic> col, Id id, UserRoleScreenFunctionModel object) {
  object.id = id;
}

extension UserRoleScreenFunctionModelQueryWhereSort on QueryBuilder<
    UserRoleScreenFunctionModel, UserRoleScreenFunctionModel, QWhere> {
  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserRoleScreenFunctionModelQueryWhere on QueryBuilder<
    UserRoleScreenFunctionModel, UserRoleScreenFunctionModel, QWhereClause> {
  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterWhereClause> idBetween(
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

extension UserRoleScreenFunctionModelQueryFilter on QueryBuilder<
    UserRoleScreenFunctionModel,
    UserRoleScreenFunctionModel,
    QFilterCondition> {
  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> canChangeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'canChange',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> canChangeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'canChange',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> canChangeEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canChange',
        value: value,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> canViewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'canView',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> canViewIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'canView',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> canViewEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canView',
        value: value,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
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

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roleId',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roleId',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'roleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'roleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
          QAfterFilterCondition>
      roleIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'roleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
          QAfterFilterCondition>
      roleIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'roleId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roleId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> roleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roleId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'screenFunctionId',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'screenFunctionId',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenFunctionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'screenFunctionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'screenFunctionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'screenFunctionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'screenFunctionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'screenFunctionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
          QAfterFilterCondition>
      screenFunctionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screenFunctionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
          QAfterFilterCondition>
      screenFunctionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screenFunctionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenFunctionId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screenFunctionId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'screenFunctionName',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'screenFunctionName',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenFunctionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'screenFunctionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'screenFunctionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'screenFunctionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'screenFunctionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'screenFunctionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
          QAfterFilterCondition>
      screenFunctionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screenFunctionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
          QAfterFilterCondition>
      screenFunctionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screenFunctionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenFunctionName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterFilterCondition> screenFunctionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screenFunctionName',
        value: '',
      ));
    });
  }
}

extension UserRoleScreenFunctionModelQueryObject on QueryBuilder<
    UserRoleScreenFunctionModel,
    UserRoleScreenFunctionModel,
    QFilterCondition> {}

extension UserRoleScreenFunctionModelQueryLinks on QueryBuilder<
    UserRoleScreenFunctionModel,
    UserRoleScreenFunctionModel,
    QFilterCondition> {}

extension UserRoleScreenFunctionModelQuerySortBy on QueryBuilder<
    UserRoleScreenFunctionModel, UserRoleScreenFunctionModel, QSortBy> {
  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByCanChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByCanChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByCanView() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByCanViewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByRoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByScreenFunctionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByScreenFunctionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByScreenFunctionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionName', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> sortByScreenFunctionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionName', Sort.desc);
    });
  }
}

extension UserRoleScreenFunctionModelQuerySortThenBy on QueryBuilder<
    UserRoleScreenFunctionModel, UserRoleScreenFunctionModel, QSortThenBy> {
  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByCanChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByCanChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByCanView() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByCanViewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByRoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByScreenFunctionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByScreenFunctionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.desc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByScreenFunctionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionName', Sort.asc);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QAfterSortBy> thenByScreenFunctionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionName', Sort.desc);
    });
  }
}

extension UserRoleScreenFunctionModelQueryWhereDistinct on QueryBuilder<
    UserRoleScreenFunctionModel, UserRoleScreenFunctionModel, QDistinct> {
  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QDistinct> distinctByCanChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canChange');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QDistinct> distinctByCanView() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canView');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QDistinct> distinctByOutletId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QDistinct> distinctByRoleId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QDistinct> distinctByScreenFunctionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screenFunctionId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, UserRoleScreenFunctionModel,
      QDistinct> distinctByScreenFunctionName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screenFunctionName',
          caseSensitive: caseSensitive);
    });
  }
}

extension UserRoleScreenFunctionModelQueryProperty on QueryBuilder<
    UserRoleScreenFunctionModel, UserRoleScreenFunctionModel, QQueryProperty> {
  QueryBuilder<UserRoleScreenFunctionModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, bool?, QQueryOperations>
      canChangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canChange');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, bool?, QQueryOperations>
      canViewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canView');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, String?, QQueryOperations>
      outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, String?, QQueryOperations>
      roleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roleId');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, String?, QQueryOperations>
      screenFunctionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screenFunctionId');
    });
  }

  QueryBuilder<UserRoleScreenFunctionModel, String?, QQueryOperations>
      screenFunctionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screenFunctionName');
    });
  }
}
