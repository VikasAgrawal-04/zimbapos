import 'package:isar/isar.dart';

part 'customer_model.g.dart';

@collection
class CustomerModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? customerName;
  String? email;
  int? mobile;
  DateTime? createDate;
  String? address1;
  String? address2;
  String? address3;
  String? city;
  String? state;
  String? country;
  String? pincode;
  String? gstNumber;
  int? customerCategoryID;
  DateTime? dateOfBirth;
  String? anniversaryDate;
  String? creditLimitAmount;
  String? gender;
  String? balanceBonusPoints;
  bool? isActive;
  bool? isDeleted;

  CustomerModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.customerName,
    this.email,
    this.mobile,
    this.createDate,
    this.address1,
    this.address2,
    this.address3,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.gstNumber,
    this.customerCategoryID,
    this.dateOfBirth,
    this.anniversaryDate,
    this.creditLimitAmount,
    this.gender,
    this.balanceBonusPoints,
    this.isActive,
    this.isDeleted,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      outletId: json['Outletid'],
      customerName: json['Customer name'],
      email: json['Email'],
      mobile: json['Mobile'],
      createDate: json['Createdate'] != null
          ? DateTime.parse(json['Createdate'])
          : null,
      address1: json['Address1'],
      address2: json['Address2'],
      address3: json['Address3'],
      city: json['City'],
      state: json['State'],
      country: json['Country'],
      pincode: json['Pincode'],
      gstNumber: json['GSTnumber'],
      customerCategoryID: json['customerCategoryID'],
      dateOfBirth: json['DateOfbirth'] != null
          ? DateTime.parse(json['DateOfbirth'])
          : null,
      anniversaryDate: json['anniversaryDate'],
      creditLimitAmount: json['creditLimitAmount'],
      gender: json['gender'],
      balanceBonusPoints: json['balanceBonuspoints'],
      isActive: json['Isactive'],
      isDeleted: json['Isdeleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Outletid': outletId,
      'Customer name': customerName,
      'Email': email,
      'Mobile': mobile,
      'Createdate': createDate?.toIso8601String(),
      'Address1': address1,
      'Address2': address2,
      'Address3': address3,
      'City': city,
      'State': state,
      'Country': country,
      'Pincode': pincode,
      'GSTnumber': gstNumber,
      'customerCategoryID': customerCategoryID,
      'DateOfbirth': dateOfBirth?.toIso8601String(),
      'anniversaryDate': anniversaryDate,
      'creditLimitAmount': creditLimitAmount,
      'gender': gender,
      'balanceBonuspoints': balanceBonusPoints,
      'Isactive': isActive,
      'Isdeleted': isDeleted,
    };
  }
}
