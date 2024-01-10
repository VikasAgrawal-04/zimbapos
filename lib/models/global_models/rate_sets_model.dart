import 'package:isar/isar.dart';

part 'rate_sets_model.g.dart';

@collection
class RateSetsModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  int? ratesetId;
  String? ratesetName;
  bool? isActive;
  bool? isDeleted;

  // @Backlink(to: 'rateSet')
  // final areas = IsarLinks.toMany<AreasModel>();

  RateSetsModel({this.ratesetName}) {
    isActive = true;
    isDeleted = false;
  }
}
