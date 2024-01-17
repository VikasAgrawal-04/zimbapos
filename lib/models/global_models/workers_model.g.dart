// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workers_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkersModelCollection on Isar {
  IsarCollection<WorkersModel> get workersModels => this.collection();
}

const WorkersModelSchema = CollectionSchema(
  name: r'WorkersModel',
  id: 2519750114688622955,
  properties: {
    r'canLoginIntoApp': PropertySchema(
      id: 0,
      name: r'canLoginIntoApp',
      type: IsarType.bool,
    ),
    r'createdByUserID': PropertySchema(
      id: 1,
      name: r'createdByUserID',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isActive': PropertySchema(
      id: 3,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 4,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'loginCode': PropertySchema(
      id: 5,
      name: r'loginCode',
      type: IsarType.string,
    ),
    r'mobile': PropertySchema(
      id: 6,
      name: r'mobile',
      type: IsarType.string,
    ),
    r'outletId': PropertySchema(
      id: 7,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'password': PropertySchema(
      id: 8,
      name: r'password',
      type: IsarType.string,
    ),
    r'workerId': PropertySchema(
      id: 9,
      name: r'workerId',
      type: IsarType.string,
    ),
    r'workerName': PropertySchema(
      id: 10,
      name: r'workerName',
      type: IsarType.string,
    ),
    r'workerRole': PropertySchema(
      id: 11,
      name: r'workerRole',
      type: IsarType.string,
    )
  },
  estimateSize: _workersModelEstimateSize,
  serialize: _workersModelSerialize,
  deserialize: _workersModelDeserialize,
  deserializeProp: _workersModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'mobile': IndexSchema(
      id: -2496727240025828292,
      name: r'mobile',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'mobile',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'loginCode': IndexSchema(
      id: 7497855378709731538,
      name: r'loginCode',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'loginCode',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _workersModelGetId,
  getLinks: _workersModelGetLinks,
  attach: _workersModelAttach,
  version: '3.1.0+1',
);

int _workersModelEstimateSize(
  WorkersModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.createdByUserID.length * 3;
  {
    final value = object.loginCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.mobile.length * 3;
  bytesCount += 3 + object.outletId.length * 3;
  {
    final value = object.password;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.workerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.workerName.length * 3;
  bytesCount += 3 + object.workerRole.length * 3;
  return bytesCount;
}

void _workersModelSerialize(
  WorkersModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.canLoginIntoApp);
  writer.writeString(offsets[1], object.createdByUserID);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeBool(offsets[3], object.isActive);
  writer.writeBool(offsets[4], object.isDeleted);
  writer.writeString(offsets[5], object.loginCode);
  writer.writeString(offsets[6], object.mobile);
  writer.writeString(offsets[7], object.outletId);
  writer.writeString(offsets[8], object.password);
  writer.writeString(offsets[9], object.workerId);
  writer.writeString(offsets[10], object.workerName);
  writer.writeString(offsets[11], object.workerRole);
}

WorkersModel _workersModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkersModel(
    canLoginIntoApp: reader.readBool(offsets[0]),
    createdByUserID: reader.readString(offsets[1]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[3]) ?? true,
    isDeleted: reader.readBoolOrNull(offsets[4]) ?? false,
    loginCode: reader.readStringOrNull(offsets[5]),
    mobile: reader.readString(offsets[6]),
    outletId: reader.readString(offsets[7]),
    password: reader.readStringOrNull(offsets[8]),
    workerId: reader.readStringOrNull(offsets[9]),
    workerName: reader.readString(offsets[10]),
    workerRole: reader.readString(offsets[11]),
  );
  return object;
}

P _workersModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workersModelGetId(WorkersModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workersModelGetLinks(WorkersModel object) {
  return [];
}

void _workersModelAttach(
    IsarCollection<dynamic> col, Id id, WorkersModel object) {
  object.id = id;
}

extension WorkersModelByIndex on IsarCollection<WorkersModel> {
  Future<WorkersModel?> getByMobile(String mobile) {
    return getByIndex(r'mobile', [mobile]);
  }

  WorkersModel? getByMobileSync(String mobile) {
    return getByIndexSync(r'mobile', [mobile]);
  }

  Future<bool> deleteByMobile(String mobile) {
    return deleteByIndex(r'mobile', [mobile]);
  }

  bool deleteByMobileSync(String mobile) {
    return deleteByIndexSync(r'mobile', [mobile]);
  }

  Future<List<WorkersModel?>> getAllByMobile(List<String> mobileValues) {
    final values = mobileValues.map((e) => [e]).toList();
    return getAllByIndex(r'mobile', values);
  }

  List<WorkersModel?> getAllByMobileSync(List<String> mobileValues) {
    final values = mobileValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'mobile', values);
  }

  Future<int> deleteAllByMobile(List<String> mobileValues) {
    final values = mobileValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'mobile', values);
  }

  int deleteAllByMobileSync(List<String> mobileValues) {
    final values = mobileValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'mobile', values);
  }

  Future<Id> putByMobile(WorkersModel object) {
    return putByIndex(r'mobile', object);
  }

  Id putByMobileSync(WorkersModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'mobile', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMobile(List<WorkersModel> objects) {
    return putAllByIndex(r'mobile', objects);
  }

  List<Id> putAllByMobileSync(List<WorkersModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'mobile', objects, saveLinks: saveLinks);
  }

  Future<WorkersModel?> getByLoginCode(String? loginCode) {
    return getByIndex(r'loginCode', [loginCode]);
  }

  WorkersModel? getByLoginCodeSync(String? loginCode) {
    return getByIndexSync(r'loginCode', [loginCode]);
  }

  Future<bool> deleteByLoginCode(String? loginCode) {
    return deleteByIndex(r'loginCode', [loginCode]);
  }

  bool deleteByLoginCodeSync(String? loginCode) {
    return deleteByIndexSync(r'loginCode', [loginCode]);
  }

  Future<List<WorkersModel?>> getAllByLoginCode(List<String?> loginCodeValues) {
    final values = loginCodeValues.map((e) => [e]).toList();
    return getAllByIndex(r'loginCode', values);
  }

  List<WorkersModel?> getAllByLoginCodeSync(List<String?> loginCodeValues) {
    final values = loginCodeValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'loginCode', values);
  }

  Future<int> deleteAllByLoginCode(List<String?> loginCodeValues) {
    final values = loginCodeValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'loginCode', values);
  }

  int deleteAllByLoginCodeSync(List<String?> loginCodeValues) {
    final values = loginCodeValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'loginCode', values);
  }

  Future<Id> putByLoginCode(WorkersModel object) {
    return putByIndex(r'loginCode', object);
  }

  Id putByLoginCodeSync(WorkersModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'loginCode', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByLoginCode(List<WorkersModel> objects) {
    return putAllByIndex(r'loginCode', objects);
  }

  List<Id> putAllByLoginCodeSync(List<WorkersModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'loginCode', objects, saveLinks: saveLinks);
  }
}

extension WorkersModelQueryWhereSort
    on QueryBuilder<WorkersModel, WorkersModel, QWhere> {
  QueryBuilder<WorkersModel, WorkersModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkersModelQueryWhere
    on QueryBuilder<WorkersModel, WorkersModel, QWhereClause> {
  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> mobileEqualTo(
      String mobile) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mobile',
        value: [mobile],
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> mobileNotEqualTo(
      String mobile) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mobile',
              lower: [],
              upper: [mobile],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mobile',
              lower: [mobile],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mobile',
              lower: [mobile],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mobile',
              lower: [],
              upper: [mobile],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause>
      loginCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'loginCode',
        value: [null],
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause>
      loginCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'loginCode',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause> loginCodeEqualTo(
      String? loginCode) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'loginCode',
        value: [loginCode],
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterWhereClause>
      loginCodeNotEqualTo(String? loginCode) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'loginCode',
              lower: [],
              upper: [loginCode],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'loginCode',
              lower: [loginCode],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'loginCode',
              lower: [loginCode],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'loginCode',
              lower: [],
              upper: [loginCode],
              includeUpper: false,
            ));
      }
    });
  }
}

extension WorkersModelQueryFilter
    on QueryBuilder<WorkersModel, WorkersModel, QFilterCondition> {
  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      canLoginIntoAppEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canLoginIntoApp',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdByUserID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdByUserID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdByUserID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdByUserID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdByUserID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByUserID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByUserID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserID',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      createdByUserIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByUserID',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      isActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      isDeletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginCode',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginCode',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginCode',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      loginCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginCode',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> mobileEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> mobileBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mobile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition> mobileMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mobile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      mobileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mobile',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdEqualTo(
    String value, {
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdGreaterThan(
    String value, {
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdLessThan(
    String value, {
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdBetween(
    String lower,
    String upper, {
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdStartsWith(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdEndsWith(
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

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'password',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'password',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workerId',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workerId',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workerId',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workerId',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workerName',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workerName',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workerRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workerRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workerRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workerRole',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workerRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workerRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workerRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workerRole',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workerRole',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterFilterCondition>
      workerRoleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workerRole',
        value: '',
      ));
    });
  }
}

extension WorkersModelQueryObject
    on QueryBuilder<WorkersModel, WorkersModel, QFilterCondition> {}

extension WorkersModelQueryLinks
    on QueryBuilder<WorkersModel, WorkersModel, QFilterCondition> {}

extension WorkersModelQuerySortBy
    on QueryBuilder<WorkersModel, WorkersModel, QSortBy> {
  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      sortByCanLoginIntoApp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canLoginIntoApp', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      sortByCanLoginIntoAppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canLoginIntoApp', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      sortByCreatedByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserID', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      sortByCreatedByUserIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserID', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByLoginCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCode', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByLoginCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCode', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByWorkerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerId', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByWorkerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerId', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByWorkerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerName', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      sortByWorkerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerName', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> sortByWorkerRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerRole', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      sortByWorkerRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerRole', Sort.desc);
    });
  }
}

extension WorkersModelQuerySortThenBy
    on QueryBuilder<WorkersModel, WorkersModel, QSortThenBy> {
  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      thenByCanLoginIntoApp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canLoginIntoApp', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      thenByCanLoginIntoAppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canLoginIntoApp', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      thenByCreatedByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserID', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      thenByCreatedByUserIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserID', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByLoginCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCode', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByLoginCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCode', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByWorkerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerId', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByWorkerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerId', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByWorkerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerName', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      thenByWorkerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerName', Sort.desc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy> thenByWorkerRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerRole', Sort.asc);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QAfterSortBy>
      thenByWorkerRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workerRole', Sort.desc);
    });
  }
}

extension WorkersModelQueryWhereDistinct
    on QueryBuilder<WorkersModel, WorkersModel, QDistinct> {
  QueryBuilder<WorkersModel, WorkersModel, QDistinct>
      distinctByCanLoginIntoApp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canLoginIntoApp');
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByCreatedByUserID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByUserID',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByLoginCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByMobile(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mobile', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByOutletId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByWorkerId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByWorkerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkersModel, WorkersModel, QDistinct> distinctByWorkerRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workerRole', caseSensitive: caseSensitive);
    });
  }
}

extension WorkersModelQueryProperty
    on QueryBuilder<WorkersModel, WorkersModel, QQueryProperty> {
  QueryBuilder<WorkersModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkersModel, bool, QQueryOperations> canLoginIntoAppProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canLoginIntoApp');
    });
  }

  QueryBuilder<WorkersModel, String, QQueryOperations>
      createdByUserIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByUserID');
    });
  }

  QueryBuilder<WorkersModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<WorkersModel, bool, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<WorkersModel, bool, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<WorkersModel, String?, QQueryOperations> loginCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginCode');
    });
  }

  QueryBuilder<WorkersModel, String, QQueryOperations> mobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mobile');
    });
  }

  QueryBuilder<WorkersModel, String, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<WorkersModel, String?, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<WorkersModel, String?, QQueryOperations> workerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workerId');
    });
  }

  QueryBuilder<WorkersModel, String, QQueryOperations> workerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workerName');
    });
  }

  QueryBuilder<WorkersModel, String, QQueryOperations> workerRoleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workerRole');
    });
  }
}
