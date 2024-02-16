// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_function_junction_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetScreenFunctionJunctionModelCollection on Isar {
  IsarCollection<ScreenFunctionJunctionModel>
      get screenFunctionJunctionModels => this.collection();
}

const ScreenFunctionJunctionModelSchema = CollectionSchema(
  name: r'ScreenFunctionJunctionModel',
  id: -5124812762363972113,
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
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'outletId': PropertySchema(
      id: 3,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'roleId': PropertySchema(
      id: 4,
      name: r'roleId',
      type: IsarType.string,
    ),
    r'screenFunctionId': PropertySchema(
      id: 5,
      name: r'screenFunctionId',
      type: IsarType.string,
    )
  },
  estimateSize: _screenFunctionJunctionModelEstimateSize,
  serialize: _screenFunctionJunctionModelSerialize,
  deserialize: _screenFunctionJunctionModelDeserialize,
  deserializeProp: _screenFunctionJunctionModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _screenFunctionJunctionModelGetId,
  getLinks: _screenFunctionJunctionModelGetLinks,
  attach: _screenFunctionJunctionModelAttach,
  version: '3.1.0+1',
);

int _screenFunctionJunctionModelEstimateSize(
  ScreenFunctionJunctionModel object,
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
  return bytesCount;
}

void _screenFunctionJunctionModelSerialize(
  ScreenFunctionJunctionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.canChange);
  writer.writeBool(offsets[1], object.canView);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeString(offsets[3], object.outletId);
  writer.writeString(offsets[4], object.roleId);
  writer.writeString(offsets[5], object.screenFunctionId);
}

ScreenFunctionJunctionModel _screenFunctionJunctionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScreenFunctionJunctionModel(
    canChange: reader.readBoolOrNull(offsets[0]),
    canView: reader.readBoolOrNull(offsets[1]),
    id: id,
    outletId: reader.readStringOrNull(offsets[3]),
    roleId: reader.readStringOrNull(offsets[4]),
    screenFunctionId: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _screenFunctionJunctionModelDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
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

Id _screenFunctionJunctionModelGetId(ScreenFunctionJunctionModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _screenFunctionJunctionModelGetLinks(
    ScreenFunctionJunctionModel object) {
  return [];
}

void _screenFunctionJunctionModelAttach(
    IsarCollection<dynamic> col, Id id, ScreenFunctionJunctionModel object) {
  object.id = id;
}

extension ScreenFunctionJunctionModelQueryWhereSort on QueryBuilder<
    ScreenFunctionJunctionModel, ScreenFunctionJunctionModel, QWhere> {
  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScreenFunctionJunctionModelQueryWhere on QueryBuilder<
    ScreenFunctionJunctionModel, ScreenFunctionJunctionModel, QWhereClause> {
  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

extension ScreenFunctionJunctionModelQueryFilter on QueryBuilder<
    ScreenFunctionJunctionModel,
    ScreenFunctionJunctionModel,
    QFilterCondition> {
  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> canChangeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'canChange',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> canChangeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'canChange',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> canChangeEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canChange',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> canViewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'canView',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> canViewIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'canView',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> canViewEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canView',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> roleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roleId',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> roleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roleId',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> roleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roleId',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> roleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roleId',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> screenFunctionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'screenFunctionId',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> screenFunctionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'screenFunctionId',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
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

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> screenFunctionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenFunctionId',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterFilterCondition> screenFunctionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screenFunctionId',
        value: '',
      ));
    });
  }
}

extension ScreenFunctionJunctionModelQueryObject on QueryBuilder<
    ScreenFunctionJunctionModel,
    ScreenFunctionJunctionModel,
    QFilterCondition> {}

extension ScreenFunctionJunctionModelQueryLinks on QueryBuilder<
    ScreenFunctionJunctionModel,
    ScreenFunctionJunctionModel,
    QFilterCondition> {}

extension ScreenFunctionJunctionModelQuerySortBy on QueryBuilder<
    ScreenFunctionJunctionModel, ScreenFunctionJunctionModel, QSortBy> {
  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByCanChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByCanChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByCanView() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByCanViewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByRoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByScreenFunctionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> sortByScreenFunctionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.desc);
    });
  }
}

extension ScreenFunctionJunctionModelQuerySortThenBy on QueryBuilder<
    ScreenFunctionJunctionModel, ScreenFunctionJunctionModel, QSortThenBy> {
  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByCanChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByCanChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canChange', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByCanView() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByCanViewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canView', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByRoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.desc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByScreenFunctionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.asc);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QAfterSortBy> thenByScreenFunctionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screenFunctionId', Sort.desc);
    });
  }
}

extension ScreenFunctionJunctionModelQueryWhereDistinct on QueryBuilder<
    ScreenFunctionJunctionModel, ScreenFunctionJunctionModel, QDistinct> {
  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QDistinct> distinctByCanChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canChange');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QDistinct> distinctByCanView() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canView');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QDistinct> distinctByOutletId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QDistinct> distinctByRoleId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, ScreenFunctionJunctionModel,
      QDistinct> distinctByScreenFunctionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screenFunctionId',
          caseSensitive: caseSensitive);
    });
  }
}

extension ScreenFunctionJunctionModelQueryProperty on QueryBuilder<
    ScreenFunctionJunctionModel, ScreenFunctionJunctionModel, QQueryProperty> {
  QueryBuilder<ScreenFunctionJunctionModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, bool?, QQueryOperations>
      canChangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canChange');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, bool?, QQueryOperations>
      canViewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canView');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, int, QQueryOperations>
      hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, String?, QQueryOperations>
      outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, String?, QQueryOperations>
      roleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roleId');
    });
  }

  QueryBuilder<ScreenFunctionJunctionModel, String?, QQueryOperations>
      screenFunctionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screenFunctionId');
    });
  }
}
