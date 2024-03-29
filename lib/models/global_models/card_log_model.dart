import 'package:isar/isar.dart';

part 'card_log_model.g.dart';

@collection
class CardLogModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? terminalId;
  String? loggedUserId;
  int? cardId;
  DateTime? entryDatetime;
  double? amount;
  String? newBalance;
  String? actionType;
  String? payMode;
  String? customerName;
  int? customerMobile;
  String? customerEmail;

  CardLogModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.terminalId,
    this.loggedUserId,
    this.cardId,
    this.entryDatetime,
    this.amount,
    this.newBalance,
    this.actionType,
    this.payMode,
    this.customerName,
    this.customerMobile,
    this.customerEmail,
  });

  factory CardLogModel.fromJson(Map<String, dynamic> json) {
    return CardLogModel(
      id: json['id'] ?? Isar.autoIncrement,
      outletId: json['outletId'],
      terminalId: json['terminalId'],
      loggedUserId: json['loggedUserId'],
      cardId: json['cardId'],
      entryDatetime: json['entryDatetime'] != null
          ? DateTime.parse(json['entryDatetime'])
          : null,
      amount: json['amount'],
      newBalance: json['newBalance'],
      actionType: json['actionType'],
      payMode: json['paymode'],
      customerName: json['customerName'],
      customerMobile: json['customerMobile'],
      customerEmail: json['customerEmail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'outletId': outletId,
      'terminalId': terminalId,
      'loggedUserId': loggedUserId,
      'cardId': cardId,
      'entryDatetime': entryDatetime?.toIso8601String(),
      'amount': amount,
      'newBalance': newBalance,
      'actionType': actionType,
      'paymode': payMode,
      'customerName': customerName,
      'customerMobile': customerMobile,
      'customerEmail': customerEmail,
    };
  }
}
