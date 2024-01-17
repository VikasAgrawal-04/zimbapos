import 'package:isar/isar.dart';
part 'area_model.g.dart';

@collection
class AreasModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  int? areaId;
  String? areaName;
  int? rateSetId;
  double? exchangePercent;
  bool? isActive;
  bool? isDeleted;

  // @Link(to: 'rateSetId')
  // final rateSet = IsarLinks.toMany<RateSetsModel>();

  AreasModel({
    Id id = Isar.autoIncrement,
    this.outletId,
    this.areaId,
    this.areaName,
    this.rateSetId,
    this.exchangePercent,
    this.isActive = true,
    this.isDeleted,
  });

  factory AreasModel.fromJson(Map<String, dynamic> json) {
    return AreasModel(
      areaId: int.parse(json['areaId']),
      areaName: json['areaName'] ?? "",
      rateSetId: int.parse(json['rateSet']),
      isActive: json['isActive'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'areaId': areaId,
      'areaName': areaName,
      'rateSet': rateSetId,
      'isActive': isActive,
    };
  }
}
