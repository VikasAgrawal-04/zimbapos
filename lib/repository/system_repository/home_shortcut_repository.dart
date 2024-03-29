import 'package:isar/isar.dart';
import 'package:zimbapos/models/system_models/home_shortcut_model.dart';

class HomeShortcutrepository {
  final Isar db;
  HomeShortcutrepository(this.db);

  Stream<List<HomeShortcutModel>> getHomeShortcut() {
    return db.homeShortcutModels.where().watch(fireImmediately: true);
  }

  List<HomeShortcutModel> getHome() {
    return db.homeShortcutModels.where().findAllSync();
  }

  void createShortcut({required HomeShortcutModel data}) async {
    var existingItem = await db.homeShortcutModels
        .filter()
        .userIdEqualTo(data.userId)
        .and()
        .pathEqualTo(data.path)
        .findFirst();
    if (existingItem == null) {
      db.writeTxnSync(() => db.homeShortcutModels.putSync(data));
    } else {
      db.writeTxnSync(() {
        existingItem.title = data.title;
        existingItem.path = data.path;
        existingItem.gridPosition = data.gridPosition;
        db.homeShortcutModels.putSync(existingItem);
      });
    }
  }

  deleteShortcutbyID(int id) async {
    db.writeTxnSync(() {
      db.homeShortcutModels.deleteSync(id);
    });
  }
}
