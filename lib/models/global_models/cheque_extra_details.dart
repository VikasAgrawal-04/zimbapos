import 'dart:convert';

import 'package:isar/isar.dart';

part 'cheque_extra_details.g.dart';

@collection
class ChequeExtraDetails {
  Id id = Isar.autoIncrement;
  String? paymentEntryId;
  String? chequeNumber;
  String? chequeDate;
  String? bankName;
  double? amount;
  ChequeExtraDetails({
    required this.id,
    this.paymentEntryId,
    this.chequeNumber,
    this.chequeDate,
    this.bankName,
    this.amount,
  });

  ChequeExtraDetails copyWith({
    Id? id,
    String? paymentEntryId,
    String? chequeNumber,
    String? chequeDate,
    String? bankName,
    double? amount,
  }) {
    return ChequeExtraDetails(
      id: id ?? this.id,
      paymentEntryId: paymentEntryId ?? this.paymentEntryId,
      chequeNumber: chequeNumber ?? this.chequeNumber,
      chequeDate: chequeDate ?? this.chequeDate,
      bankName: bankName ?? this.bankName,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'paymentEntryId': paymentEntryId,
      'chequeNumber': chequeNumber,
      'chequeDate': chequeDate,
      'bankName': bankName,
      'amount': amount,
    };
  }

  factory ChequeExtraDetails.fromMap(Map<String, dynamic> map) {
    return ChequeExtraDetails(
      id: map['id'],
      paymentEntryId: map['paymentEntryId'] != null
          ? map['paymentEntryId'] as String
          : null,
      chequeNumber:
          map['chequeNumber'] != null ? map['chequeNumber'] as String : null,
      chequeDate:
          map['chequeDate'] != null ? map['chequeDate'] as String : null,
      bankName: map['bankName'] != null ? map['bankName'] as String : null,
      amount: map['amount'] != null ? map['amount'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChequeExtraDetails.fromJson(String source) =>
      ChequeExtraDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChequeExtraDetails(id: $id, paymentEntryId: $paymentEntryId, chequeNumber: $chequeNumber, chequeDate: $chequeDate, bankName: $bankName, amount: $amount)';
  }

  @override
  bool operator ==(covariant ChequeExtraDetails other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.paymentEntryId == paymentEntryId &&
        other.chequeNumber == chequeNumber &&
        other.chequeDate == chequeDate &&
        other.bankName == bankName &&
        other.amount == amount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        paymentEntryId.hashCode ^
        chequeNumber.hashCode ^
        chequeDate.hashCode ^
        bankName.hashCode ^
        amount.hashCode;
  }
}
