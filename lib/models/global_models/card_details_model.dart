import 'dart:convert';

import 'package:isar/isar.dart';

part 'card_details_model.g.dart';

@collection
class ClassExtraDetails {
  Id id = Isar.autoIncrement;
  String? paymentEntryId;
  String? cardType;
  String? issuer;
  String? lastDigits;
  ClassExtraDetails({
    required this.id,
    this.paymentEntryId,
    this.cardType,
    this.issuer,
    this.lastDigits,
  });

  ClassExtraDetails copyWith({
    Id? id,
    String? paymentEntryId,
    String? cardType,
    String? issuer,
    String? lastDigits,
  }) {
    return ClassExtraDetails(
      id: id ?? this.id,
      paymentEntryId: paymentEntryId ?? this.paymentEntryId,
      cardType: cardType ?? this.cardType,
      issuer: issuer ?? this.issuer,
      lastDigits: lastDigits ?? this.lastDigits,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'paymentEntryId': paymentEntryId,
      'cardType': cardType,
      'issuer': issuer,
      'lastDigits': lastDigits,
    };
  }

  factory ClassExtraDetails.fromMap(Map<String, dynamic> map) {
    return ClassExtraDetails(
      id: map['id'],
      paymentEntryId: map['paymentEntryId'] != null
          ? map['paymentEntryId'] as String
          : null,
      cardType: map['cardType'] != null ? map['cardType'] as String : null,
      issuer: map['issuer'] != null ? map['issuer'] as String : null,
      lastDigits:
          map['lastDigits'] != null ? map['lastDigits'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassExtraDetails.fromJson(String source) =>
      ClassExtraDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClassExtraDetails(id: $id, paymentEntryId: $paymentEntryId, cardType: $cardType, issuer: $issuer, lastDigits: $lastDigits)';
  }

  @override
  bool operator ==(covariant ClassExtraDetails other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.paymentEntryId == paymentEntryId &&
        other.cardType == cardType &&
        other.issuer == issuer &&
        other.lastDigits == lastDigits;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        paymentEntryId.hashCode ^
        cardType.hashCode ^
        issuer.hashCode ^
        lastDigits.hashCode;
  }
}
