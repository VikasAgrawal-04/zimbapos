import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';

part 'bill_payment_model.g.dart';

@collection
class BillPaymentModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? paymentEntryId;
  int? billId;
  String? userId;
  String? payCode;
  double? amount;
  double? returnAmount;
  String? payId;
  final payModeDetails = IsarLink<PayModMasterModel>();
  BillPaymentModel({
    required this.id,
    this.outletId,
    this.paymentEntryId,
    this.billId,
    this.userId,
    this.payCode,
    this.amount,
    this.returnAmount,
    this.payId,
  });

  BillPaymentModel copyWith({
    Id? id,
    String? outletId,
    String? paymentEntryId,
    int? billId,
    String? userId,
    String? payCode,
    double? amount,
    double? returnAmount,
    String? payId,
  }) {
    return BillPaymentModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      paymentEntryId: paymentEntryId ?? this.paymentEntryId,
      billId: billId ?? this.billId,
      userId: userId ?? this.userId,
      payCode: payCode ?? this.payCode,
      amount: amount ?? this.amount,
      returnAmount: returnAmount ?? this.returnAmount,
      payId: payId ?? this.payId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'paymentEntryId': paymentEntryId,
      'billId': billId,
      'userId': userId,
      'payCode': payCode,
      'amount': amount,
      'returnAmount': returnAmount,
      'payId': payId,
      'payMode': payModeDetails.value == null
          ? null
          : jsonDecode(payModeDetails.value!.toMap().toString())
    };
  }

  factory BillPaymentModel.fromMap(Map<String, dynamic> map) {
    return BillPaymentModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      paymentEntryId: map['paymentEntryId'] != null
          ? map['paymentEntryId'] as String
          : null,
      billId: map['billId'] != null ? map['billId'] as int : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      payCode: map['payCode'] != null ? map['payCode'] as String : null,
      amount: map['amount'] != null ? map['amount'] as double : null,
      returnAmount:
          map['returnAmount'] != null ? map['returnAmount'] as double : null,
      payId: map['payId'] != null ? map['payId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BillPaymentModel.fromJson(String source) =>
      BillPaymentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BillPaymentModel(id: $id, outletId: $outletId, paymentEntryId: $paymentEntryId, billId: $billId, userId: $userId, payCode: $payCode, amount: $amount, returnAmount: $returnAmount, payId: $payId)';
  }

  @override
  bool operator ==(covariant BillPaymentModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.paymentEntryId == paymentEntryId &&
        other.billId == billId &&
        other.userId == userId &&
        other.payCode == payCode &&
        other.amount == amount &&
        other.returnAmount == returnAmount &&
        other.payId == payId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        paymentEntryId.hashCode ^
        billId.hashCode ^
        userId.hashCode ^
        payCode.hashCode ^
        amount.hashCode ^
        returnAmount.hashCode ^
        payId.hashCode;
  }
}
