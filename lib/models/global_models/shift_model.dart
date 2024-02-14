import 'dart:convert';

import 'package:isar/isar.dart';

part 'shift_model.g.dart';

@collection
class ShiftModel {
  Id id = Isar.autoIncrement;
  int? shiftId;
  String? userId;
  DateTime? shiftStartedAt;
  DateTime? shiftEndedAt;
  bool shiftEnded;
  ShiftModel({
    this.id = Isar.autoIncrement,
    this.shiftId = 0,
    this.userId,
    this.shiftStartedAt,
    this.shiftEndedAt,
    this.shiftEnded = false,
  });

  ShiftModel copyWith({
    Id? id,
    int? shiftId,
    String? userId,
    DateTime? shiftStartedAt,
    DateTime? shiftEndedAt,
    bool? shiftEnded,
  }) {
    return ShiftModel(
      id: id ?? this.id,
      shiftId: shiftId ?? this.shiftId,
      userId: userId ?? this.userId,
      shiftStartedAt: shiftStartedAt ?? this.shiftStartedAt,
      shiftEndedAt: shiftEndedAt ?? this.shiftEndedAt,
      shiftEnded: shiftEnded ?? this.shiftEnded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'shiftId': shiftId,
      'userId': userId,
      'shiftStartedAt': shiftStartedAt?.millisecondsSinceEpoch,
      'shiftEndedAt': shiftEndedAt?.millisecondsSinceEpoch,
      'shiftEnded': shiftEnded,
    };
  }

  factory ShiftModel.fromMap(Map<String, dynamic> map) {
    return ShiftModel(
      id: map['id'],
      shiftId: map['shiftId'] != null ? map['shiftId'] as int : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      shiftStartedAt: map['shiftStartedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['shiftStartedAt'] as int)
          : null,
      shiftEndedAt: map['shiftEndedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['shiftEndedAt'] as int)
          : null,
      shiftEnded: map['shiftEnded'] != null ? map['shiftEnded'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShiftModel.fromJson(String source) =>
      ShiftModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ShiftModel(id: $id, shiftId: $shiftId, userId: $userId, shiftStartedAt: $shiftStartedAt, shiftEndedAt: $shiftEndedAt, shiftEnded: $shiftEnded)';
  }

  @override
  bool operator ==(covariant ShiftModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.shiftId == shiftId &&
        other.userId == userId &&
        other.shiftStartedAt == shiftStartedAt &&
        other.shiftEndedAt == shiftEndedAt &&
        other.shiftEnded == shiftEnded;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        shiftId.hashCode ^
        userId.hashCode ^
        shiftStartedAt.hashCode ^
        shiftEndedAt.hashCode ^
        shiftEnded.hashCode;
  }
}
