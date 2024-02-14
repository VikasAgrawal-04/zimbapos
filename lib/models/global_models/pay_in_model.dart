import 'dart:convert';

import 'package:isar/isar.dart';

part 'pay_in_model.g.dart';

@collection
class PayInModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? payInId;
  DateTime? dateTime;
  double? amount;
  String? userId;
  int? billId;
  String? reason;
  String? customerId;
  PayInModel({
    required this.id,
    this.outletId,
    this.payInId,
    this.dateTime,
    this.amount,
    this.billId,
    this.userId,
    this.reason,
    this.customerId,
  });

  PayInModel copyWith({
    Id? id,
    String? outletId,
    String? payInId,
    DateTime? dateTime,
    double? amount,
    String? userId,
    int? billId,
    String? reason,
    String? customerId,
  }) {
    return PayInModel(
        id: id ?? this.id,
        outletId: outletId ?? this.outletId,
        payInId: payInId ?? this.payInId,
        dateTime: dateTime ?? this.dateTime,
        amount: amount ?? this.amount,
        userId: userId ?? this.userId,
        reason: reason ?? this.reason,
        customerId: customerId ?? this.customerId,
        billId: billId ?? this.billId);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'payInId': payInId,
      'dateTime': dateTime?.millisecondsSinceEpoch,
      'amount': amount,
      'userId': userId,
      'reason': reason,
      'customerId': customerId,
      'billId': billId
    };
  }

  factory PayInModel.fromMap(Map<String, dynamic> map) {
    return PayInModel(
        id: map['id'],
        outletId: map['outletId'] != null ? map['outletId'] as String : null,
        payInId: map['payInId'] != null ? map['payInId'] as String : null,
        dateTime: map['dateTime'] != null
            ? DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int)
            : DateTime.now(),
        amount: map['amount'] != null ? map['amount'] as double : null,
        userId: map['userId'] != null ? map['userId'] as String : null,
        reason: map['reason'] != null ? map['reason'] as String : null,
        customerId:
            map['customerId'] != null ? map['customerId'] as String : null,
        billId: map['billId'] != null ? map['billId'] as int : null);
  }

  String toJson() => json.encode(toMap());

  factory PayInModel.fromJson(String source) =>
      PayInModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PayInModel(id: $id, outletId: $outletId, payInId: $payInId, dateTime: $dateTime, amount: $amount, userId: $userId, reason: $reason, customerId: $customerId)';
  }

  @override
  bool operator ==(covariant PayInModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.payInId == payInId &&
        other.dateTime == dateTime &&
        other.amount == amount &&
        other.userId == userId &&
        other.reason == reason &&
        other.customerId == customerId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        payInId.hashCode ^
        dateTime.hashCode ^
        amount.hashCode ^
        userId.hashCode ^
        reason.hashCode ^
        customerId.hashCode;
  }
}
