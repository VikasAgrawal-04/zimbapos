import 'package:isar/isar.dart';

part 'card_model.g.dart';

@collection
class CardModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  int? cardId;
  DateTime? createDatetime;
  double? balance;
  DateTime? lastLoadedDatetime;
  DateTime? lastUsedDatetime;
  String? customerName;
  int? customerMobile;
  String? customerEmail;
  bool? isActive;
  bool? isDeleted;

  CardModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.cardId,
    this.createDatetime,
    this.balance,
    this.lastLoadedDatetime,
    this.lastUsedDatetime,
    this.customerName,
    this.customerMobile,
    this.customerEmail,
    this.isActive = true,
    this.isDeleted = false,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      id: json['id'] ?? Isar.autoIncrement,
      outletId: json['outletId'],
      cardId: json['cardId'],
      createDatetime: json['createDatetime'] != null
          ? DateTime.parse(json['createDatetime'])
          : null,
      balance: json['balance'],
      lastLoadedDatetime: json['lastLoadedDatetime'] != null
          ? DateTime.parse(json['lastLoadedDatetime'])
          : null,
      lastUsedDatetime: json['lastUsedDatetime'] != null
          ? DateTime.parse(json['lastUsedDatetime'])
          : null,
      customerName: json['customerName'],
      customerMobile: json['customerMobile'],
      customerEmail: json['customerEmail'],
      isActive: json['isActive'],
      isDeleted: json['isDeleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'outletId': outletId,
      'cardId': cardId,
      'createDatetime': createDatetime?.toIso8601String(),
      'balance': balance,
      'lastLoadedDatetime': lastLoadedDatetime?.toIso8601String(),
      'lastUsedDatetime': lastUsedDatetime?.toIso8601String(),
      'customerName': customerName,
      'customerMobile': customerMobile,
      'customerEmail': customerEmail,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }
}
