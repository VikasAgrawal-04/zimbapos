import 'package:isar/isar.dart';

part 'expenses_model.g.dart';

@collection
class ExpenseModel {
  Id id = Isar.autoIncrement;
  int? expenseId;
  DateTime? entryDatetime;
  int? entryByUserId;
  int? expenseCategoryId;
  String? description;
  int? vendorId;
  String? billNumber;
  DateTime? billDate;
  int? amount;
  String? payMode;
  bool? isActive;
  bool? isDeleted;

  ExpenseModel({
    this.id = Isar.autoIncrement,
    this.expenseId,
    this.entryDatetime,
    this.entryByUserId,
    this.expenseCategoryId,
    this.description,
    this.vendorId,
    this.billNumber,
    this.billDate,
    this.amount,
    this.payMode,
    this.isActive,
    this.isDeleted,
  });

  // Convert a Map to an Expense instance
  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      expenseId: map['expenseId'],
      entryDatetime: map['entryDatetime'] != null
          ? DateTime.parse(map['entryDatetime'])
          : null,
      entryByUserId: map['entryByUserId'],
      expenseCategoryId: map['expenseCategoryId'],
      description: map['description'],
      vendorId: map['vendorId'],
      billNumber: map['billNumber'],
      billDate:
          map['billDate'] != null ? DateTime.parse(map['billDate']) : null,
      amount: map['amount'],
      payMode: map['payMode'],
      isActive: map['isActive'],
      isDeleted: map['isDeleted'],
    );
  }

  // Convert an Expense instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'expenseId': expenseId,
      'entryDatetime': entryDatetime?.toIso8601String(),
      'entryByUserId': entryByUserId,
      'expenseCategoryId': expenseCategoryId,
      'description': description,
      'vendorId': vendorId,
      'billNumber': billNumber,
      'billDate': billDate?.toIso8601String(),
      'amount': amount,
      'payMode': payMode,
      'isActive': isActive,
      'isdeleted': isDeleted,
    };
  }
}
