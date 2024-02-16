// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_function_mapping_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSFMappingModelCollection on Isar {
  IsarCollection<SFMappingModel> get sFMappingModels => this.collection();
}

const SFMappingModelSchema = CollectionSchema(
  name: r'SFMappingModel',
  id: -2260881011532523847,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'scrnFnId': PropertySchema(
      id: 1,
      name: r'scrnFnId',
      type: IsarType.string,
    ),
    r'scrnFnName': PropertySchema(
      id: 2,
      name: r'scrnFnName',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.string,
      enumMap: _SFMappingModeltypeEnumValueMap,
    )
  },
  estimateSize: _sFMappingModelEstimateSize,
  serialize: _sFMappingModelSerialize,
  deserialize: _sFMappingModelDeserialize,
  deserializeProp: _sFMappingModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sFMappingModelGetId,
  getLinks: _sFMappingModelGetLinks,
  attach: _sFMappingModelAttach,
  version: '3.1.0+1',
);

int _sFMappingModelEstimateSize(
  SFMappingModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.scrnFnId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.scrnFnName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  return bytesCount;
}

void _sFMappingModelSerialize(
  SFMappingModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeString(offsets[1], object.scrnFnId);
  writer.writeString(offsets[2], object.scrnFnName);
  writer.writeString(offsets[3], object.type?.name);
}

SFMappingModel _sFMappingModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SFMappingModel(
    id: id,
    scrnFnId: reader.readStringOrNull(offsets[1]),
    scrnFnName: reader.readStringOrNull(offsets[2]),
    type: _SFMappingModeltypeValueEnumMap[reader.readStringOrNull(offsets[3])],
  );
  return object;
}

P _sFMappingModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (_SFMappingModeltypeValueEnumMap[reader.readStringOrNull(offset)])
          as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SFMappingModeltypeEnumValueMap = {
  r'screen': r'screen',
  r'function': r'function',
};
const _SFMappingModeltypeValueEnumMap = {
  r'screen': MapType.screen,
  r'function': MapType.function,
};

Id _sFMappingModelGetId(SFMappingModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sFMappingModelGetLinks(SFMappingModel object) {
  return [];
}

void _sFMappingModelAttach(
    IsarCollection<dynamic> col, Id id, SFMappingModel object) {
  object.id = id;
}

extension SFMappingModelQueryWhereSort
    on QueryBuilder<SFMappingModel, SFMappingModel, QWhere> {
  QueryBuilder<SFMappingModel, SFMappingModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SFMappingModelQueryWhere
    on QueryBuilder<SFMappingModel, SFMappingModel, QWhereClause> {
  QueryBuilder<SFMappingModel, SFMappingModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterWhereClause> idBetween(
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

extension SFMappingModelQueryFilter
    on QueryBuilder<SFMappingModel, SFMappingModel, QFilterCondition> {
  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scrnFnId',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scrnFnId',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrnFnId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scrnFnId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scrnFnId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scrnFnId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'scrnFnId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'scrnFnId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'scrnFnId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'scrnFnId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrnFnId',
        value: '',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'scrnFnId',
        value: '',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scrnFnName',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scrnFnName',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrnFnName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scrnFnName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scrnFnName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scrnFnName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'scrnFnName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'scrnFnName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'scrnFnName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'scrnFnName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrnFnName',
        value: '',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      scrnFnNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'scrnFnName',
        value: '',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeEqualTo(
    MapType? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeGreaterThan(
    MapType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeLessThan(
    MapType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeBetween(
    MapType? lower,
    MapType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension SFMappingModelQueryObject
    on QueryBuilder<SFMappingModel, SFMappingModel, QFilterCondition> {}

extension SFMappingModelQueryLinks
    on QueryBuilder<SFMappingModel, SFMappingModel, QFilterCondition> {}

extension SFMappingModelQuerySortBy
    on QueryBuilder<SFMappingModel, SFMappingModel, QSortBy> {
  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> sortByScrnFnId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnId', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      sortByScrnFnIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnId', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      sortByScrnFnName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnName', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      sortByScrnFnNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnName', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension SFMappingModelQuerySortThenBy
    on QueryBuilder<SFMappingModel, SFMappingModel, QSortThenBy> {
  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> thenByScrnFnId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnId', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      thenByScrnFnIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnId', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      thenByScrnFnName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnName', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy>
      thenByScrnFnNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scrnFnName', Sort.desc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension SFMappingModelQueryWhereDistinct
    on QueryBuilder<SFMappingModel, SFMappingModel, QDistinct> {
  QueryBuilder<SFMappingModel, SFMappingModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QDistinct> distinctByScrnFnId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scrnFnId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QDistinct> distinctByScrnFnName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scrnFnName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SFMappingModel, SFMappingModel, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension SFMappingModelQueryProperty
    on QueryBuilder<SFMappingModel, SFMappingModel, QQueryProperty> {
  QueryBuilder<SFMappingModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SFMappingModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<SFMappingModel, String?, QQueryOperations> scrnFnIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scrnFnId');
    });
  }

  QueryBuilder<SFMappingModel, String?, QQueryOperations> scrnFnNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scrnFnName');
    });
  }

  QueryBuilder<SFMappingModel, MapType?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
