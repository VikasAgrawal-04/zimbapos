import 'package:isar/isar.dart';

part 'discount_bulk_model.g.dart';

@collection
class BulkDisc {
  Id id = Isar.autoIncrement;
  int? couponId;
  String couponName;
  int couponGenAmount;
  String couponCode;
  DateTime validFromDate;
  DateTime validToDate;
  int discountPercent;
  int maxDiscount;
  bool isMultiUse;
  bool? isActive;
  bool? isDeleted;

  BulkDisc({
    this.id = Isar.autoIncrement,
    this.couponId,
    required this.couponName,
    required this.couponGenAmount,
    required this.couponCode,
    required this.validFromDate,
    required this.validToDate,
    required this.discountPercent,
    required this.maxDiscount,
    required this.isMultiUse,
    this.isActive = true,
    this.isDeleted = false,
  });

  // Factory method to create an instance from a map
  factory BulkDisc.fromJson(Map<String, dynamic> json) {
    return BulkDisc(
      id: json['id'],
      couponId: json['couponId'],
      couponName: json['couponName'],
      couponGenAmount: json['couponAmount'],
      couponCode: json['couponCode'],
      validFromDate: DateTime.parse(json['validFromDate']),
      validToDate: DateTime.parse(json['validToDate']),
      discountPercent: json['discountPercent'],
      maxDiscount: json['maxDiscount'],
      isMultiUse: json['isMultiUse'],
      isActive: json['isActive'],
      isDeleted: json['isdeleted'],
    );
  }

  factory BulkDisc.randomValues() {
    // Implement logic to generate random values for testing
    return BulkDisc(
      couponName: 'RandomCoupon',
      couponCode: 'RANDOM123',
      couponGenAmount: 10,
      validFromDate: DateTime.now(),
      validToDate: DateTime.now().add(const Duration(days: 30)),
      discountPercent: 20,
      maxDiscount: 50,
      isMultiUse: true,
      isActive: true,
      isDeleted: false,
    );
  }

  // Method to convert the object to a map for serialization
  Map<String, dynamic> toJson() {
    return {
      'couponId': couponId,
      'couponName': couponName,
      'couponAmount': couponGenAmount,
      'couponCode': couponCode,
      'validFromDate': validFromDate.toIso8601String(),
      'validToDate': validToDate.toIso8601String(),
      'discountPercent': discountPercent,
      'maxDiscount': maxDiscount,
      'isMultiUse': isMultiUse,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }
}
