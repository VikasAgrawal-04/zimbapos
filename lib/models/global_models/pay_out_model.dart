import 'dart:convert';

import 'package:isar/isar.dart';

part 'pay_out_model.g.dart';

@collection
class PayOutModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? paytoutId;
  int? terminalId;
  int? billId;
  DateTime? dateTime;
  double? amount;
  String? userId;
  String? reason;
  int? shiftId;
  PayOutModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.paytoutId,
    this.terminalId,
    this.billId,
    this.dateTime,
    this.amount,
    this.userId,
    this.reason,
    this.shiftId,
  });

  PayOutModel copyWith({
    Id? id,
    String? outletId,
    String? paytoutId,
    int? terminalId,
    int? billId,
    DateTime? dateTime,
    double? amount,
    String? userId,
    String? reason,
    int? shiftId,
  }) {
    return PayOutModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      paytoutId: paytoutId ?? this.paytoutId,
      terminalId: terminalId ?? this.terminalId,
      billId: billId ?? this.billId,
      dateTime: dateTime ?? this.dateTime,
      amount: amount ?? this.amount,
      userId: userId ?? this.userId,
      reason: reason ?? this.reason,
      shiftId: shiftId ?? this.shiftId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'paytoutId': paytoutId,
      'terminalId': terminalId,
      'billId': billId,
      'dateTime': dateTime?.millisecondsSinceEpoch,
      'amount': amount,
      'userId': userId,
      'reason': reason,
      'shiftId': shiftId,
    };
  }

  factory PayOutModel.fromMap(Map<String, dynamic> map) {
    return PayOutModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      paytoutId: map['paytoutId'] != null ? map['paytoutId'] as String : null,
      terminalId: map['terminalId'] != null ? map['terminalId'] as int : null,
      billId: map['billId'] != null ? map['billId'] as int : null,
      dateTime: map['dateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int)
          : DateTime.now(),
      amount: map['amount'] != null ? map['amount'] as double : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      reason: map['reason'] != null ? map['reason'] as String : null,
      shiftId: map['shiftId'] != null ? map['shiftId'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PayOutModel.fromJson(String source) =>
      PayOutModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PayOutModel(id: $id, outletId: $outletId, paytoutId: $paytoutId, terminalId: $terminalId, billId: $billId, dateTime: $dateTime, amount: $amount, userId: $userId, reason: $reason, shiftId: $shiftId)';
  }

  @override
  bool operator ==(covariant PayOutModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.paytoutId == paytoutId &&
        other.terminalId == terminalId &&
        other.billId == billId &&
        other.dateTime == dateTime &&
        other.amount == amount &&
        other.userId == userId &&
        other.reason == reason &&
        other.shiftId == shiftId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        paytoutId.hashCode ^
        terminalId.hashCode ^
        billId.hashCode ^
        dateTime.hashCode ^
        amount.hashCode ^
        userId.hashCode ^
        reason.hashCode ^
        shiftId.hashCode;
  }
}
