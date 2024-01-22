// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaxModelCollection on Isar {
  IsarCollection<TaxModel> get taxModels => this.collection();
}

const TaxModelSchema = CollectionSchema(
  name: r'TaxModel',
  id: -3753743766418626748,
  properties: {
    r'isActive': PropertySchema(
      id: 0,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 1,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'taxId': PropertySchema(
      id: 2,
      name: r'taxId',
      type: IsarType.long,
    ),
    r'taxName': PropertySchema(
      id: 3,
      name: r'taxName',
      type: IsarType.string,
    ),
    r'taxPercent': PropertySchema(
      id: 4,
      name: r'taxPercent',
      type: IsarType.long,
    ),
    r'taxType': PropertySchema(
      id: 5,
      name: r'taxType',
      type: IsarType.string,
    )
  },
  estimateSize: _taxModelEstimateSize,
  serialize: _taxModelSerialize,
  deserialize: _taxModelDeserialize,
  deserializeProp: _taxModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _taxModelGetId,
  getLinks: _taxModelGetLinks,
  attach: _taxModelAttach,
  version: '3.1.0+1',
);

int _taxModelEstimateSize(
  TaxModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.taxName.length * 3;
  {
    final value = object.taxType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taxModelSerialize(
  TaxModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isActive);
  writer.writeBool(offsets[1], object.isDeleted);
  writer.writeLong(offsets[2], object.taxId);
  writer.writeString(offsets[3], object.taxName);
  writer.writeLong(offsets[4], object.taxPercent);
  writer.writeString(offsets[5], object.taxType);
}

TaxModel _taxModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaxModel(
    id: id,
    isActive: reader.readBoolOrNull(offsets[0]),
    isDeleted: reader.readBoolOrNull(offsets[1]),
    taxId: reader.readLongOrNull(offsets[2]),
    taxName: reader.readString(offsets[3]),
    taxPercent: reader.readLongOrNull(offsets[4]),
    taxType: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _taxModelDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taxModelGetId(TaxModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taxModelGetLinks(TaxModel object) {
  return [];
}

void _taxModelAttach(IsarCollection<dynamic> col, Id id, TaxModel object) {
  object.id = id;
}

extension TaxModelQueryWhereSort on QueryBuilder<TaxModel, TaxModel, QWhere> {
  QueryBuilder<TaxModel, TaxModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaxModelQueryWhere on QueryBuilder<TaxModel, TaxModel, QWhereClause> {
  QueryBuilder<TaxModel, TaxModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TaxModel, TaxModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterWhereClause> idBetween(
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

extension TaxModelQueryFilter
    on QueryBuilder<TaxModel, TaxModel, QFilterCondition> {
  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxPercent',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition>
      taxPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxPercent',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxPercentEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxPercentGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxPercentLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxPercent',
        value: value,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxPercentBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxPercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxType',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxType',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: '',
      ));
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterFilterCondition> taxTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxType',
        value: '',
      ));
    });
  }
}

extension TaxModelQueryObject
    on QueryBuilder<TaxModel, TaxModel, QFilterCondition> {}

extension TaxModelQueryLinks
    on QueryBuilder<TaxModel, TaxModel, QFilterCondition> {}

extension TaxModelQuerySortBy on QueryBuilder<TaxModel, TaxModel, QSortBy> {
  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxName', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxName', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> sortByTaxTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.desc);
    });
  }
}

extension TaxModelQuerySortThenBy
    on QueryBuilder<TaxModel, TaxModel, QSortThenBy> {
  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxName', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxName', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.desc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.asc);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QAfterSortBy> thenByTaxTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.desc);
    });
  }
}

extension TaxModelQueryWhereDistinct
    on QueryBuilder<TaxModel, TaxModel, QDistinct> {
  QueryBuilder<TaxModel, TaxModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<TaxModel, TaxModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<TaxModel, TaxModel, QDistinct> distinctByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxId');
    });
  }

  QueryBuilder<TaxModel, TaxModel, QDistinct> distinctByTaxName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaxModel, TaxModel, QDistinct> distinctByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxPercent');
    });
  }

  QueryBuilder<TaxModel, TaxModel, QDistinct> distinctByTaxType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxType', caseSensitive: caseSensitive);
    });
  }
}

extension TaxModelQueryProperty
    on QueryBuilder<TaxModel, TaxModel, QQueryProperty> {
  QueryBuilder<TaxModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaxModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<TaxModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<TaxModel, int?, QQueryOperations> taxIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxId');
    });
  }

  QueryBuilder<TaxModel, String, QQueryOperations> taxNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxName');
    });
  }

  QueryBuilder<TaxModel, int?, QQueryOperations> taxPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxPercent');
    });
  }

  QueryBuilder<TaxModel, String?, QQueryOperations> taxTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxType');
    });
  }
}
