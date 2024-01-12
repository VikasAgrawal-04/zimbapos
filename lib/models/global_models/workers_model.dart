// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 'workers_model.g.dart';

@collection
class WorkersModel {
  Id id = Isar.autoIncrement;
  String workerId;
  String workerName;
  String createdByUserID;
  int outletId;
  String workerRole;
  String mobile;
  bool canLoginIntoApp;
  String loginCode;
  String password;
  bool isActive;
  bool isDeleted;

  WorkersModel({
    this.id = Isar.autoIncrement,
    required this.workerId,
    required this.workerName,
    required this.createdByUserID,
    required this.outletId,
    required this.workerRole,
    required this.mobile,
    required this.canLoginIntoApp,
    required this.loginCode,
    required this.password,
    required this.isActive,
    required this.isDeleted,
  });

  WorkersModel copyWith({
    Id? id,
    String? workerId,
    String? workerName,
    String? createdByUserID,
    int? outletId,
    String? workerRole,
    String? mobile,
    bool? canLoginIntoApp,
    String? loginCode,
    String? password,
    bool? isActive,
    bool? isDeleted,
  }) {
    return WorkersModel(
      id: id ?? this.id,
      workerId: workerId ?? this.workerId,
      workerName: workerName ?? this.workerName,
      createdByUserID: createdByUserID ?? this.createdByUserID,
      outletId: outletId ?? this.outletId,
      workerRole: workerRole ?? this.workerRole,
      mobile: mobile ?? this.mobile,
      canLoginIntoApp: canLoginIntoApp ?? this.canLoginIntoApp,
      loginCode: loginCode ?? this.loginCode,
      password: password ?? this.password,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  String workerRoleDisplay(String value) {
    switch (value) {
      case 'W':
        return 'Worker';
      case 'C':
        return 'Caption';
      case 'D':
        return 'Delivery Boy';
      case 'S':
        return "Steward";
      default:
        return '';
    }
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'workerId': workerId,
      'workerName': workerName,
      'createdByUserID': createdByUserID,
      'outletId': outletId,
      'workerRole': workerRole,
      'mobile': mobile,
      'canLoginIntoApp': canLoginIntoApp,
      'loginCode': loginCode,
      'password': password,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory WorkersModel.fromMap(Map<String, dynamic> map) {
    return WorkersModel(
      workerId: map['workerId'] as String,
      workerName: map['workerName'] as String,
      createdByUserID: map['createdByUserID'] as String,
      outletId: map['outletId'] as int,
      workerRole: map['workerRole'] as String,
      mobile: map['mobile'] as String,
      canLoginIntoApp: map['canLoginIntoApp'] as bool,
      loginCode: map['loginCode'] as String,
      password: map['password'] as String,
      isActive: map['isActive'] as bool,
      isDeleted: map['isDeleted'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkersModel.fromJson(String source) =>
      WorkersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WorkersModel(id: $id, workerId: $workerId, workerName: $workerName, createdByUserID: $createdByUserID, outletId: $outletId, workerRole: $workerRole, mobile: $mobile, canLoginIntoApp: $canLoginIntoApp, loginCode: $loginCode, password: $password, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant WorkersModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.workerId == workerId &&
        other.workerName == workerName &&
        other.createdByUserID == createdByUserID &&
        other.outletId == outletId &&
        other.workerRole == workerRole &&
        other.mobile == mobile &&
        other.canLoginIntoApp == canLoginIntoApp &&
        other.loginCode == loginCode &&
        other.password == password &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        workerId.hashCode ^
        workerName.hashCode ^
        createdByUserID.hashCode ^
        outletId.hashCode ^
        workerRole.hashCode ^
        mobile.hashCode ^
        canLoginIntoApp.hashCode ^
        loginCode.hashCode ^
        password.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
