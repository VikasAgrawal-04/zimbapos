// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'home_shortcut_model.g.dart';

@collection
class HomeShortcutModel {
  Id isarId;
  String? title;
  String? path;
  String? userId;
  int? gridPosition;

  HomeShortcutModel({
    this.isarId = Isar.autoIncrement,
    this.title,
    this.path,
    this.userId,
    this.gridPosition,
  });

  @override
  String toString() {
    return 'HomeShortcutModel(isarId: $isarId, title: $title, path: $path, userId: $userId, gridPosition: $gridPosition)';
  }
}
