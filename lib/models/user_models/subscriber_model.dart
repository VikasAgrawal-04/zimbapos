// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

@collection
class SubscriberModel {
  Id isarId = Isar.autoIncrement;
  String? name;
  String? mobile;
  String? email;

  SubscriberModel({
    required this.isarId,
    this.name,
    this.mobile,
    this.email,
  });

  SubscriberModel copyWith({
    Id? isarId,
    String? name,
    String? mobile,
    String? email,
  }) {
    return SubscriberModel(
      isarId: isarId ?? this.isarId,
      name: name ?? this.name,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isarId': isarId,
      'name': name,
      'mobile': mobile,
      'email': email,
    };
  }

  factory SubscriberModel.fromMap(Map<String, dynamic> map) {
    return SubscriberModel(
      isarId: map['isarId'],
      name: map['name'] != null ? map['name'] as String : null,
      mobile: map['mobile'] != null ? map['mobile'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscriberModel.fromJson(String source) =>
      SubscriberModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SubscriberModel(isarId: $isarId, name: $name, mobile: $mobile, email: $email)';
  }

  @override
  bool operator ==(covariant SubscriberModel other) {
    if (identical(this, other)) return true;

    return other.isarId == isarId &&
        other.name == name &&
        other.mobile == mobile &&
        other.email == email;
  }

  @override
  int get hashCode {
    return isarId.hashCode ^ name.hashCode ^ mobile.hashCode ^ email.hashCode;
  }
}
