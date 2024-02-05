import 'package:isar/isar.dart';

part 'customer_model.g.dart';

@collection
class CustomerModel {
  Id id = Isar.autoIncrement;
  String? customerId;
  String? outletId;
  String? customerName;
  String? email;
  String? mobile;
  DateTime? createDate;
  String? address1;
  String? address2;
  String? address3;
  String? city;
  String? state;
  String? country;
  String? pincode;
  String? gstNumber;
  String? customerCategoryID;
  DateTime? dateOfBirth;
  String? anniversaryDate;
  String? creditLimitAmount;
  String? gender;
  String? balanceBonusPoints;
  bool? isActive;
  bool? isDeleted;

  CustomerModel({
    this.id = Isar.autoIncrement,
    this.customerId,
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
    this.isActive = true,
    this.isDeleted = false,
  });

  CustomerModel copyWith(
      {Id? id,
      String? outletId,
      String? customerId,
      String? customerName,
      String? email,
      String? mobile,
      DateTime? createDate,
      String? address1,
      String? address2,
      String? address3,
      String? city,
      String? state,
      String? country,
      String? pincode,
      String? gstNumber,
      String? customerCategoryID,
      DateTime? dateOfBirth,
      String? anniversaryDate,
      String? creditLimitAmount,
      String? gender,
      String? balanceBonusPoints,
      bool? isActive,
      bool? isDeleted}) {
    return CustomerModel(
        id: id ?? this.id,
        customerId: customerId ?? this.customerId,
        outletId: outletId ?? this.outletId,
        customerName: customerName ?? this.customerName,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        createDate: createDate ?? this.createDate,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        address3: address3 ?? this.address3,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        pincode: pincode ?? this.pincode,
        gstNumber: gstNumber ?? this.gstNumber,
        customerCategoryID: customerCategoryID ?? this.customerCategoryID,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        anniversaryDate: anniversaryDate ?? this.anniversaryDate,
        creditLimitAmount: creditLimitAmount ?? this.creditLimitAmount,
        gender: gender ?? this.gender,
        balanceBonusPoints: balanceBonusPoints ?? this.balanceBonusPoints,
        isActive: isActive ?? this.isActive,
        isDeleted: isDeleted ?? this.isDeleted);
  }

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json['id'] ?? Isar.autoIncrement,
      customerId: json['customer_id'],
      outletId: json['outlet_id'],
      customerName: json['customer_name'],
      email: json['email'],
      mobile: json['mobile'],
      createDate: json['created_date'] != null
          ? DateTime.parse(json['created_date'])
          : null,
      address1: json['address1'],
      address2: json['address2'],
      address3: json['address3'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      pincode: json['pincode'],
      gstNumber: json['gst_number'],
      customerCategoryID: json['customer_category_id'],
      dateOfBirth: json['dob'] != null ? DateTime.parse(json['dob']) : null,
      anniversaryDate: json['anniversary_date'],
      creditLimitAmount: json['credit_limit_amount'],
      gender: json['gender'],
      balanceBonusPoints: json['balance_bonus_points'],
      isActive: json['is_active'] ?? true,
      isDeleted: json['is_deleted'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customer_id': customerId,
      'outlet_id': outletId,
      'customer_name': customerName,
      'email': email,
      'mobile': mobile,
      'created_date': createDate?.toIso8601String(),
      'address1': address1,
      'address2': address2,
      'address3': address3,
      'city': city,
      'state': state,
      'country': country,
      'pincode': pincode,
      'gst_number': gstNumber,
      'customer_category_id': customerCategoryID,
      'dob': dateOfBirth,
      'anniversary_date': anniversaryDate,
      'credit_limit_amount': creditLimitAmount,
      'gender': gender,
      'balance_bonus_points': balanceBonusPoints,
      'is_active': isActive,
      'is_deleted': isDeleted,
    };
  }
}
