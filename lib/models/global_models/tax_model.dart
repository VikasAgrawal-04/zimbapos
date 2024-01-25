import 'package:isar/isar.dart';
part 'tax_model.g.dart';

@collection
class TaxModel {
  Id id = Isar.autoIncrement;
  String? taxId;
  String taxName;
  String? taxType;
  double? taxPercent;
  bool? isActive;
  bool? isDeleted;

  TaxModel({
    this.id = Isar.autoIncrement,
    this.taxId,
    required this.taxName,
    this.taxType,
    this.taxPercent,
    this.isActive = true,
    this.isDeleted = false,
  });

  // Factory method to create a TaxModel from a Map (JSON)
  factory TaxModel.fromJson(Map<String, dynamic> json) {
    return TaxModel(
      id: json['id'],
      taxId: json['taxId'],
      taxName: json['taxName'],
      taxType: json['taxType'],
      taxPercent: json['taxPercent'],
      isActive: json['isActive'],
      isDeleted: json['isDeleted'],
    );
  }

  // Convert TaxModel to a Map (JSON)
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'taxId': taxId,
      'taxName': taxName,
      'taxType': taxType,
      'taxPercent': taxPercent,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
    return data;
  }
}
