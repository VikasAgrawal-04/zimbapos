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
    this.areaName,
    this.rateSetId,
    this.exchangePercent,
  }) {
    isActive = true;
    isDeleted = false;
  }
}
