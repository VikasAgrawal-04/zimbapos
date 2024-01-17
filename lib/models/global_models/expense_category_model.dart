import 'package:isar/isar.dart';
part 'expense_category_model.g.dart';

@collection
class ExpenseCategoryModel {
  Id id = Isar.autoIncrement;
  int? expenseCategoryId;
  String expenseCategoryName;
  bool? isActive;
  bool? isDeleted;

  ExpenseCategoryModel({
    this.id = Isar.autoIncrement,
    this.expenseCategoryId,
    required this.expenseCategoryName,
    this.isActive = true,
    this.isDeleted,
  });

  // Convert a Map to an ExpenseCategory instance
  factory ExpenseCategoryModel.fromMap(Map<String, dynamic> map) {
    return ExpenseCategoryModel(
      expenseCategoryId: map['expenseCategoryId'],
      expenseCategoryName: map['expenseCategoryName'],
      isActive: map['isActive'],
      isDeleted: map['isDeleted'],
    );
  }

  // Convert an ExpenseCategory instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'expenseCategoryId': expenseCategoryId,
      'expenseCategoryName': expenseCategoryName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }
}
