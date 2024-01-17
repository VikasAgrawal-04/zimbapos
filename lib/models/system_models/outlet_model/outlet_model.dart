// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/system_models/outlet_model/outlet_type_model.dart';
part 'outlet_model.g.dart';

@collection
class OutletModel {
  Id isarid = Isar.autoIncrement;
  String? outletId;
  @enumerated
  OutletType outletType;
  OutletModel({
    this.isarid = Isar.autoIncrement,
    this.outletId,
    this.outletType = OutletType.restaurant,
  });

  OutletModel copyWith({
    Id? isarid,
    String? outletId,
    OutletType? outletType,
  }) {
    return OutletModel(
      isarid: isarid ?? this.isarid,
      outletId: outletId ?? this.outletId,
      outletType: outletType ?? this.outletType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isarid': isarid,
      'outletId': outletId,
      'outletType': outletType.toMap(),
    };
  }

  factory OutletModel.fromMap(Map<String, dynamic> map) {
    return OutletModel(
      isarid: map['isarid'],
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      outletType: OutletTypeExtension.fromMap(
          map['outletType'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory OutletModel.fromJson(String source) =>
      OutletModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'OutletModel(isarid: $isarid, outletId: $outletId, outletType: $outletType)';

  @override
  bool operator ==(covariant OutletModel other) {
    if (identical(this, other)) return true;

    return other.isarid == isarid &&
        other.outletId == outletId &&
        other.outletType == outletType;
  }

  @override
  int get hashCode => isarid.hashCode ^ outletId.hashCode ^ outletType.hashCode;
}
