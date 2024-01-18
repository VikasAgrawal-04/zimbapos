// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVendorModelCollection on Isar {
  IsarCollection<VendorModel> get vendorModels => this.collection();
}

const VendorModelSchema = CollectionSchema(
  name: r'VendorModel',
  id: -7683415128182415933,
  properties: {
    r'address1': PropertySchema(
      id: 0,
      name: r'address1',
      type: IsarType.string,
    ),
    r'address2': PropertySchema(
      id: 1,
      name: r'address2',
      type: IsarType.string,
    ),
    r'address3': PropertySchema(
      id: 2,
      name: r'address3',
      type: IsarType.string,
    ),
    r'bankAccHolderName': PropertySchema(
      id: 3,
      name: r'bankAccHolderName',
      type: IsarType.string,
    ),
    r'bankAccNo': PropertySchema(
      id: 4,
      name: r'bankAccNo',
      type: IsarType.long,
    ),
    r'bankBranch': PropertySchema(
      id: 5,
      name: r'bankBranch',
      type: IsarType.string,
    ),
    r'bankName': PropertySchema(
      id: 6,
      name: r'bankName',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 7,
      name: r'city',
      type: IsarType.string,
    ),
    r'country': PropertySchema(
      id: 8,
      name: r'country',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 9,
      name: r'email',
      type: IsarType.string,
    ),
    r'gst': PropertySchema(
      id: 10,
      name: r'gst',
      type: IsarType.string,
    ),
    r'ifscCode': PropertySchema(
      id: 11,
      name: r'ifscCode',
      type: IsarType.string,
    ),
    r'isActive': PropertySchema(
      id: 12,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 13,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'mobile': PropertySchema(
      id: 14,
      name: r'mobile',
      type: IsarType.long,
    ),
    r'postcode': PropertySchema(
      id: 15,
      name: r'postcode',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 16,
      name: r'state',
      type: IsarType.string,
    ),
    r'vendorId': PropertySchema(
      id: 17,
      name: r'vendorId',
      type: IsarType.long,
    ),
    r'vendorName': PropertySchema(
      id: 18,
      name: r'vendorName',
      type: IsarType.string,
    ),
    r'website': PropertySchema(
      id: 19,
      name: r'website',
      type: IsarType.string,
    )
  },
  estimateSize: _vendorModelEstimateSize,
  serialize: _vendorModelSerialize,
  deserialize: _vendorModelDeserialize,
  deserializeProp: _vendorModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _vendorModelGetId,
  getLinks: _vendorModelGetLinks,
  attach: _vendorModelAttach,
  version: '3.1.0+1',
);

int _vendorModelEstimateSize(
  VendorModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.address2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.address3;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bankAccHolderName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bankBranch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bankName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.city;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.gst;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ifscCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.postcode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.state;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.vendorName.length * 3;
  {
    final value = object.website;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _vendorModelSerialize(
  VendorModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address1);
  writer.writeString(offsets[1], object.address2);
  writer.writeString(offsets[2], object.address3);
  writer.writeString(offsets[3], object.bankAccHolderName);
  writer.writeLong(offsets[4], object.bankAccNo);
  writer.writeString(offsets[5], object.bankBranch);
  writer.writeString(offsets[6], object.bankName);
  writer.writeString(offsets[7], object.city);
  writer.writeString(offsets[8], object.country);
  writer.writeString(offsets[9], object.email);
  writer.writeString(offsets[10], object.gst);
  writer.writeString(offsets[11], object.ifscCode);
  writer.writeBool(offsets[12], object.isActive);
  writer.writeBool(offsets[13], object.isDeleted);
  writer.writeLong(offsets[14], object.mobile);
  writer.writeString(offsets[15], object.postcode);
  writer.writeString(offsets[16], object.state);
  writer.writeLong(offsets[17], object.vendorId);
  writer.writeString(offsets[18], object.vendorName);
  writer.writeString(offsets[19], object.website);
}

VendorModel _vendorModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VendorModel(
    address1: reader.readStringOrNull(offsets[0]),
    address2: reader.readStringOrNull(offsets[1]),
    address3: reader.readStringOrNull(offsets[2]),
    bankAccHolderName: reader.readStringOrNull(offsets[3]),
    bankAccNo: reader.readLongOrNull(offsets[4]),
    bankBranch: reader.readStringOrNull(offsets[5]),
    bankName: reader.readStringOrNull(offsets[6]),
    city: reader.readStringOrNull(offsets[7]),
    country: reader.readStringOrNull(offsets[8]),
    email: reader.readStringOrNull(offsets[9]),
    gst: reader.readStringOrNull(offsets[10]),
    id: id,
    ifscCode: reader.readStringOrNull(offsets[11]),
    isActive: reader.readBoolOrNull(offsets[12]),
    isDeleted: reader.readBoolOrNull(offsets[13]),
    mobile: reader.readLongOrNull(offsets[14]),
    postcode: reader.readStringOrNull(offsets[15]),
    state: reader.readStringOrNull(offsets[16]),
    vendorId: reader.readLongOrNull(offsets[17]),
    vendorName: reader.readString(offsets[18]),
    website: reader.readStringOrNull(offsets[19]),
  );
  return object;
}

P _vendorModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readBoolOrNull(offset)) as P;
    case 13:
      return (reader.readBoolOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _vendorModelGetId(VendorModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _vendorModelGetLinks(VendorModel object) {
  return [];
}

void _vendorModelAttach(
    IsarCollection<dynamic> col, Id id, VendorModel object) {
  object.id = id;
}

extension VendorModelQueryWhereSort
    on QueryBuilder<VendorModel, VendorModel, QWhere> {
  QueryBuilder<VendorModel, VendorModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VendorModelQueryWhere
    on QueryBuilder<VendorModel, VendorModel, QWhereClause> {
  QueryBuilder<VendorModel, VendorModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<VendorModel, VendorModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterWhereClause> idBetween(
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

extension VendorModelQueryFilter
    on QueryBuilder<VendorModel, VendorModel, QFilterCondition> {
  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address1',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address1',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address1Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address1',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address1',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address2',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address2',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address2Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address2',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address2',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address3',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address3',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address3EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address3Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> address3Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address3',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      address3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address3',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankAccHolderName',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankAccHolderName',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccHolderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankAccHolderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankAccHolderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankAccHolderName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankAccHolderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankAccHolderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankAccHolderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankAccHolderName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccHolderName',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccHolderNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankAccHolderName',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankAccNo',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankAccNo',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccNoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccNo',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccNoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankAccNo',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccNoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankAccNo',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankAccNoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankAccNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankBranch',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankBranch',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankBranch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankBranch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankBranch',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankBranchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankBranch',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankName',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankName',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> bankNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> bankNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> bankNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankName',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      bankNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankName',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      cityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> countryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> countryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gst',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> gstIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      gstIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gst',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ifscCode',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ifscCode',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> ifscCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ifscCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ifscCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ifscCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> ifscCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ifscCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ifscCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ifscCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ifscCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> ifscCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ifscCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ifscCode',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      ifscCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ifscCode',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      isDeletedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> mobileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mobile',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      mobileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mobile',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> mobileEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      mobileGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mobile',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> mobileLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mobile',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> mobileBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mobile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'postcode',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'postcode',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> postcodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> postcodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postcode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'postcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'postcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> postcodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postcode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postcode',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      postcodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postcode',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      stateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      stateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'state',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> stateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      stateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> vendorIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vendorId',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vendorId',
        value: value,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> vendorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vendorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vendorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vendorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vendorName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vendorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vendorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vendorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vendorName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorName',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      vendorNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vendorName',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      websiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      websiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> websiteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      websiteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> websiteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> websiteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'website',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      websiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> websiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> websiteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition> websiteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'website',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      websiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: '',
      ));
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterFilterCondition>
      websiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'website',
        value: '',
      ));
    });
  }
}

extension VendorModelQueryObject
    on QueryBuilder<VendorModel, VendorModel, QFilterCondition> {}

extension VendorModelQueryLinks
    on QueryBuilder<VendorModel, VendorModel, QFilterCondition> {}

extension VendorModelQuerySortBy
    on QueryBuilder<VendorModel, VendorModel, QSortBy> {
  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByAddress1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByAddress1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByAddress2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByAddress2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByAddress3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address3', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByAddress3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address3', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy>
      sortByBankAccHolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccHolderName', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy>
      sortByBankAccHolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccHolderName', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByBankAccNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccNo', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByBankAccNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccNo', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByBankBranch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankBranch', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByBankBranchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankBranch', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByBankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByBankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByIfscCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ifscCode', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByIfscCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ifscCode', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByPostcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postcode', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByPostcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postcode', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByVendorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorName', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByVendorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorName', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByWebsite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> sortByWebsiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.desc);
    });
  }
}

extension VendorModelQuerySortThenBy
    on QueryBuilder<VendorModel, VendorModel, QSortThenBy> {
  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByAddress1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByAddress1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address1', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByAddress2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByAddress2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address2', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByAddress3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address3', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByAddress3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address3', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy>
      thenByBankAccHolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccHolderName', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy>
      thenByBankAccHolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccHolderName', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByBankAccNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccNo', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByBankAccNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccNo', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByBankBranch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankBranch', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByBankBranchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankBranch', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByBankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByBankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankName', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIfscCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ifscCode', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIfscCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ifscCode', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByPostcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postcode', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByPostcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postcode', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByVendorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorName', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByVendorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorName', Sort.desc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByWebsite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.asc);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QAfterSortBy> thenByWebsiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.desc);
    });
  }
}

extension VendorModelQueryWhereDistinct
    on QueryBuilder<VendorModel, VendorModel, QDistinct> {
  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByAddress1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByAddress2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByAddress3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByBankAccHolderName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankAccHolderName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByBankAccNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankAccNo');
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByBankBranch(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankBranch', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByBankName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByGst(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gst', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByIfscCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ifscCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mobile');
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByPostcode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postcode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorId');
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByVendorName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VendorModel, VendorModel, QDistinct> distinctByWebsite(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'website', caseSensitive: caseSensitive);
    });
  }
}

extension VendorModelQueryProperty
    on QueryBuilder<VendorModel, VendorModel, QQueryProperty> {
  QueryBuilder<VendorModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> address1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address1');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> address2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address2');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> address3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address3');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations>
      bankAccHolderNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankAccHolderName');
    });
  }

  QueryBuilder<VendorModel, int?, QQueryOperations> bankAccNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankAccNo');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> bankBranchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankBranch');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> bankNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankName');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> gstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gst');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> ifscCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ifscCode');
    });
  }

  QueryBuilder<VendorModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<VendorModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<VendorModel, int?, QQueryOperations> mobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mobile');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> postcodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postcode');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }

  QueryBuilder<VendorModel, int?, QQueryOperations> vendorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorId');
    });
  }

  QueryBuilder<VendorModel, String, QQueryOperations> vendorNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorName');
    });
  }

  QueryBuilder<VendorModel, String?, QQueryOperations> websiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'website');
    });
  }
}
