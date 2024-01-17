// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 'user_model.g.dart';

@collection
class UserModel {
  Id? isarId;
  String? outletID;
  String? userID;
  String? fullname;
  String? mobile;
  String? logInId;
  String? password;
  String? userRoleId;
  double? maximumDiscount;
  String? email;
  bool? isActive;
  bool? isDeleted;
  UserModel({
    this.isarId,
    this.outletID,
    this.userID,
    this.fullname,
    this.mobile,
    this.logInId,
    this.password,
    this.userRoleId,
    this.maximumDiscount,
    this.email,
    this.isActive,
    this.isDeleted,
  });

  UserModel copyWith({
    Id? isarId,
    String? outletID,
    String? userID,
    String? fullname,
    String? mobile,
    String? logInId,
    String? password,
    String? userRoleId,
    double? maximumDiscount,
    String? email,
    bool? isActive,
    bool? isDeleted,
  }) {
    return UserModel(
      isarId: isarId ?? this.isarId,
      outletID: outletID ?? this.outletID,
      userID: userID ?? this.userID,
      fullname: fullname ?? this.fullname,
      mobile: mobile ?? this.mobile,
      logInId: logInId ?? this.logInId,
      password: password ?? this.password,
      userRoleId: userRoleId ?? this.userRoleId,
      maximumDiscount: maximumDiscount ?? this.maximumDiscount,
      email: email ?? this.email,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isarId': isarId,
      'outletID': outletID,
      'userID': userID,
      'fullname': fullname,
      'mobile': mobile,
      'logInId': logInId,
      'password': password,
      'userRoleId': userRoleId,
      'maximumDiscount': maximumDiscount,
      'email': email,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      isarId: map['isarId'],
      outletID: map['outletID'] != null ? map['outletID'] as String : null,
      userID: map['userID'] != null ? map['userID'] as String : null,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      mobile: map['mobile'] != null ? map['mobile'] as String : null,
      logInId: map['logInId'] != null ? map['logInId'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      userRoleId:
          map['userRoleId'] != null ? map['userRoleId'] as String : null,
      maximumDiscount: map['maximumDiscount'] != null
          ? map['maximumDiscount'] as double
          : null,
      email: map['email'] != null ? map['email'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(isarId: $isarId, outletID: $outletID, userID: $userID, fullname: $fullname, mobile: $mobile, logInId: $logInId, password: $password, userRoleId: $userRoleId, maximumDiscount: $maximumDiscount, email: $email, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.isarId == isarId &&
        other.outletID == outletID &&
        other.userID == userID &&
        other.fullname == fullname &&
        other.mobile == mobile &&
        other.logInId == logInId &&
        other.password == password &&
        other.userRoleId == userRoleId &&
        other.maximumDiscount == maximumDiscount &&
        other.email == email &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return isarId.hashCode ^
        outletID.hashCode ^
        userID.hashCode ^
        fullname.hashCode ^
        mobile.hashCode ^
        logInId.hashCode ^
        password.hashCode ^
        userRoleId.hashCode ^
        maximumDiscount.hashCode ^
        email.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
