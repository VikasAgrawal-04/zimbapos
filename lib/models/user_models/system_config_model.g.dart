// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_config_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSystemConfigModelCollection on Isar {
  IsarCollection<SystemConfigModel> get systemConfigModels => this.collection();
}

const SystemConfigModelSchema = CollectionSchema(
  name: r'SystemConfigModel',
  id: 2683620607224772102,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'hybrid': PropertySchema(
      id: 1,
      name: r'hybrid',
      type: IsarType.bool,
    ),
    r'ipAddress': PropertySchema(
      id: 2,
      name: r'ipAddress',
      type: IsarType.string,
    ),
    r'mainServer': PropertySchema(
      id: 3,
      name: r'mainServer',
      type: IsarType.bool,
    ),
    r'port': PropertySchema(
      id: 4,
      name: r'port',
      type: IsarType.string,
    )
  },
  estimateSize: _systemConfigModelEstimateSize,
  serialize: _systemConfigModelSerialize,
  deserialize: _systemConfigModelDeserialize,
  deserializeProp: _systemConfigModelDeserializeProp,
  idName: r'isarID',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _systemConfigModelGetId,
  getLinks: _systemConfigModelGetLinks,
  attach: _systemConfigModelAttach,
  version: '3.1.0+1',
);

int _systemConfigModelEstimateSize(
  SystemConfigModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ipAddress.length * 3;
  bytesCount += 3 + object.port.length * 3;
  return bytesCount;
}

void _systemConfigModelSerialize(
  SystemConfigModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeBool(offsets[1], object.hybrid);
  writer.writeString(offsets[2], object.ipAddress);
  writer.writeBool(offsets[3], object.mainServer);
  writer.writeString(offsets[4], object.port);
}

SystemConfigModel _systemConfigModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SystemConfigModel(
    hybrid: reader.readBool(offsets[1]),
    ipAddress: reader.readString(offsets[2]),
    isarID: id,
    mainServer: reader.readBool(offsets[3]),
    port: reader.readString(offsets[4]),
  );
  return object;
}

P _systemConfigModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _systemConfigModelGetId(SystemConfigModel object) {
  return object.isarID;
}

List<IsarLinkBase<dynamic>> _systemConfigModelGetLinks(
    SystemConfigModel object) {
  return [];
}

void _systemConfigModelAttach(
    IsarCollection<dynamic> col, Id id, SystemConfigModel object) {
  object.isarID = id;
}

extension SystemConfigModelQueryWhereSort
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QWhere> {
  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterWhere> anyIsarID() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SystemConfigModelQueryWhere
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QWhereClause> {
  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterWhereClause>
      isarIDEqualTo(Id isarID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarID,
        upper: isarID,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterWhereClause>
      isarIDNotEqualTo(Id isarID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarID, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarID, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarID, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarID, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterWhereClause>
      isarIDGreaterThan(Id isarID, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarID, includeLower: include),
      );
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterWhereClause>
      isarIDLessThan(Id isarID, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarID, includeUpper: include),
      );
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterWhereClause>
      isarIDBetween(
    Id lowerIsarID,
    Id upperIsarID, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarID,
        includeLower: includeLower,
        upper: upperIsarID,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SystemConfigModelQueryFilter
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QFilterCondition> {
  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
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

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
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

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
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

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      hybridEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hybrid',
        value: value,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ipAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ipAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ipAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ipAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ipAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ipAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ipAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ipAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ipAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      ipAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ipAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      isarIDEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarID',
        value: value,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      isarIDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarID',
        value: value,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      isarIDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarID',
        value: value,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      isarIDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      mainServerEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainServer',
        value: value,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'port',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'port',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'port',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'port',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'port',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'port',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'port',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'port',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'port',
        value: '',
      ));
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterFilterCondition>
      portIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'port',
        value: '',
      ));
    });
  }
}

extension SystemConfigModelQueryObject
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QFilterCondition> {}

extension SystemConfigModelQueryLinks
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QFilterCondition> {}

extension SystemConfigModelQuerySortBy
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QSortBy> {
  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByHybrid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hybrid', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByHybridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hybrid', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByIpAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipAddress', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByIpAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipAddress', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByMainServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainServer', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByMainServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainServer', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'port', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      sortByPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'port', Sort.desc);
    });
  }
}

extension SystemConfigModelQuerySortThenBy
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QSortThenBy> {
  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByHybrid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hybrid', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByHybridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hybrid', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByIpAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipAddress', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByIpAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipAddress', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByIsarID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarID', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByIsarIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarID', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByMainServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainServer', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByMainServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainServer', Sort.desc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'port', Sort.asc);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QAfterSortBy>
      thenByPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'port', Sort.desc);
    });
  }
}

extension SystemConfigModelQueryWhereDistinct
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QDistinct> {
  QueryBuilder<SystemConfigModel, SystemConfigModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QDistinct>
      distinctByHybrid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hybrid');
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QDistinct>
      distinctByIpAddress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ipAddress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QDistinct>
      distinctByMainServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainServer');
    });
  }

  QueryBuilder<SystemConfigModel, SystemConfigModel, QDistinct> distinctByPort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'port', caseSensitive: caseSensitive);
    });
  }
}

extension SystemConfigModelQueryProperty
    on QueryBuilder<SystemConfigModel, SystemConfigModel, QQueryProperty> {
  QueryBuilder<SystemConfigModel, int, QQueryOperations> isarIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarID');
    });
  }

  QueryBuilder<SystemConfigModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<SystemConfigModel, bool, QQueryOperations> hybridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hybrid');
    });
  }

  QueryBuilder<SystemConfigModel, String, QQueryOperations>
      ipAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ipAddress');
    });
  }

  QueryBuilder<SystemConfigModel, bool, QQueryOperations> mainServerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainServer');
    });
  }

  QueryBuilder<SystemConfigModel, String, QQueryOperations> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'port');
    });
  }
}
