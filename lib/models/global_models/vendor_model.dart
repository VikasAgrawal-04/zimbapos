import 'package:isar/isar.dart';
part 'vendor_model.g.dart';

@collection
class VendorModel {
  Id id = Isar.autoIncrement;
  int? vendorId;
  String vendorName;
  String? address1;
  String? address2;
  String? address3;
  String? postcode;
  String? city;
  String? state;
  String? country;
  int? mobile;
  String? email;
  String? website;
  String? gst;
  int? bankAccNo;
  String? bankAccHolderName;
  String? bankName;
  String? bankBranch;
  String? ifscCode;
  bool? isActive;
  bool? isDeleted;

  VendorModel({
    this.vendorId,
    required this.vendorName,
    this.address1,
    this.address2,
    this.address3,
    this.postcode,
    this.city,
    this.state,
    this.country,
    this.mobile,
    this.email,
    this.website,
    this.gst,
    this.bankAccNo,
    this.bankAccHolderName,
    this.bankName,
    this.bankBranch,
    this.ifscCode,
    this.isActive = true,
    this.isDeleted,
  });

  // Convert a Map to a Vendor instance
  factory VendorModel.fromMap(Map<String, dynamic> map) {
    return VendorModel(
      vendorId: map['vendorId'],
      vendorName: map['vendorName'],
      address1: map['address1'],
      address2: map['address2'],
      address3: map['address3'],
      postcode: map['postcode'],
      city: map['city'],
      state: map['state'],
      country: map['country'],
      mobile: map['mobile'],
      email: map['email'],
      website: map['website'],
      gst: map['gst'],
      bankAccNo: map['bankAccNo'],
      bankAccHolderName: map['bankAccHolderName'],
      bankName: map['bankName'],
      bankBranch: map['bankBranch'],
      ifscCode: map['ifscCode'],
      isActive: map['isActive'],
      isDeleted: map['isDeleted'],
    );
  }

  // Convert a Vendor instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'vendorId': vendorId,
      'vendorName': vendorName,
      'address1': address1,
      'address2': address2,
      'address3': address3,
      'postcode': postcode,
      'city': city,
      'state': state,
      'country': country,
      'mobile': mobile,
      'email': email,
      'website': website,
      'gst': gst,
      'bankAccNo': bankAccNo,
      'bankAccHolderName': bankAccHolderName,
      'bankName': bankName,
      'bankBranch': bankBranch,
      'ifscCode': ifscCode,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }
}
