import 'package:isar/isar.dart';

part 'payments_model.g.dart';

@collection
class PaymentModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? payCode;
  String? payTypeName;
  bool? isUserCreated;
  bool? isActive;
  bool? isDeleted;

  PaymentModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.payCode,
    this.payTypeName,
    this.isUserCreated,
    this.isActive = true,
    this.isDeleted = false,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) {
    return PaymentModel(
      id: json['id'] as int,
      outletId: json['outletId'] as String?,
      payCode: json['payCode'] as String?,
      payTypeName: json['payTypeName'] as String?,
      isUserCreated: json['isUserCreated'] as bool?,
      isActive: json['isActive'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'outletId': outletId,
      'payCode': payCode,
      'payTypeName': payTypeName,
      'isUserCreated': isUserCreated,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }
}
