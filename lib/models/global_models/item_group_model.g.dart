// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_group_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemGroupModelCollection on Isar {
  IsarCollection<ItemGroupModel> get itemGroupModels => this.collection();
}

const ItemGroupModelSchema = CollectionSchema(
  name: r'ItemGroupModel',
  id: 7624406730510896655,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isActive': PropertySchema(
      id: 1,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 2,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'itemGroupId': PropertySchema(
      id: 3,
      name: r'itemGroupId',
      type: IsarType.string,
    ),
    r'itemGroupName': PropertySchema(
      id: 4,
      name: r'itemGroupName',
      type: IsarType.string,
    ),
    r'mainGroupId': PropertySchema(
      id: 5,
      name: r'mainGroupId',
      type: IsarType.string,
    ),
    r'outletId': PropertySchema(
      id: 6,
      name: r'outletId',
      type: IsarType.long,
    ),
    r'printerId': PropertySchema(
      id: 7,
      name: r'printerId',
      type: IsarType.string,
    )
  },
  estimateSize: _itemGroupModelEstimateSize,
  serialize: _itemGroupModelSerialize,
  deserialize: _itemGroupModelDeserialize,
  deserializeProp: _itemGroupModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _itemGroupModelGetId,
  getLinks: _itemGroupModelGetLinks,
  attach: _itemGroupModelAttach,
  version: '3.1.0+1',
);

int _itemGroupModelEstimateSize(
  ItemGroupModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.itemGroupId.length * 3;
  {
    final value = object.itemGroupName;
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
    final value = object.printerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _itemGroupModelSerialize(
  ItemGroupModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeBool(offsets[1], object.isActive);
  writer.writeBool(offsets[2], object.isDeleted);
  writer.writeString(offsets[3], object.itemGroupId);
  writer.writeString(offsets[4], object.itemGroupName);
  writer.writeString(offsets[5], object.mainGroupId);
  writer.writeLong(offsets[6], object.outletId);
  writer.writeString(offsets[7], object.printerId);
}

ItemGroupModel _itemGroupModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ItemGroupModel(
    id: id,
    isActive: reader.readBoolOrNull(offsets[1]),
    isDeleted: reader.readBoolOrNull(offsets[2]),
    itemGroupName: reader.readStringOrNull(offsets[4]),
    mainGroupId: reader.readStringOrNull(offsets[5]),
    outletId: reader.readLongOrNull(offsets[6]),
    printerId: reader.readStringOrNull(offsets[7]),
  );
  object.itemGroupId = reader.readString(offsets[3]);
  return object;
}

P _itemGroupModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _itemGroupModelGetId(ItemGroupModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemGroupModelGetLinks(ItemGroupModel object) {
  return [];
}

void _itemGroupModelAttach(
    IsarCollection<dynamic> col, Id id, ItemGroupModel object) {
  object.id = id;
}

extension ItemGroupModelQueryWhereSort
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QWhere> {
  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ItemGroupModelQueryWhere
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QWhereClause> {
  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterWhereClause> idBetween(
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

extension ItemGroupModelQueryFilter
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QFilterCondition> {
  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      isActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemGroupName',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemGroupName',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemGroupName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemGroupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemGroupName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupName',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      itemGroupNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemGroupName',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      mainGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      mainGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      mainGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      mainGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      mainGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      mainGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      outletIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
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

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'printerId',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'printerId',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'printerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'printerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'printerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'printerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'printerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'printerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'printerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printerId',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterFilterCondition>
      printerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'printerId',
        value: '',
      ));
    });
  }
}

extension ItemGroupModelQueryObject
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QFilterCondition> {}

extension ItemGroupModelQueryLinks
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QFilterCondition> {}

extension ItemGroupModelQuerySortBy
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QSortBy> {
  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByItemGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupName', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByItemGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupName', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> sortByPrinterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printerId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      sortByPrinterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printerId', Sort.desc);
    });
  }
}

extension ItemGroupModelQuerySortThenBy
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QSortThenBy> {
  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByItemGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupName', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByItemGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupName', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy> thenByPrinterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printerId', Sort.asc);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QAfterSortBy>
      thenByPrinterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printerId', Sort.desc);
    });
  }
}

extension ItemGroupModelQueryWhereDistinct
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> {
  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct>
      distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> distinctByItemGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemGroupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct>
      distinctByItemGroupName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemGroupName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> distinctByMainGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainGroupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> distinctByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId');
    });
  }

  QueryBuilder<ItemGroupModel, ItemGroupModel, QDistinct> distinctByPrinterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'printerId', caseSensitive: caseSensitive);
    });
  }
}

extension ItemGroupModelQueryProperty
    on QueryBuilder<ItemGroupModel, ItemGroupModel, QQueryProperty> {
  QueryBuilder<ItemGroupModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ItemGroupModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ItemGroupModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<ItemGroupModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<ItemGroupModel, String, QQueryOperations> itemGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemGroupId');
    });
  }

  QueryBuilder<ItemGroupModel, String?, QQueryOperations>
      itemGroupNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemGroupName');
    });
  }

  QueryBuilder<ItemGroupModel, String?, QQueryOperations>
      mainGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainGroupId');
    });
  }

  QueryBuilder<ItemGroupModel, int?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<ItemGroupModel, String?, QQueryOperations> printerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'printerId');
    });
  }
}
