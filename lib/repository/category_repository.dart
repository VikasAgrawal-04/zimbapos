import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

class CategoryRepository {
  Isar db;
  CategoryRepository(this.db);

  Stream<List<CategoryModel>> streamCategory() {
    return db.categoryModels.where().watch(fireImmediately: true);
  }

  Future<List<CategoryModel>> getAllCategory() {
    return db.categoryModels.filter().isDeletedEqualTo(false).findAll();
  }

  Future<void> changeActive(int id, bool isActive) async {
    CategoryModel? model = await db.categoryModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.categoryModels.putSync(model);
      });
    }
  }

  void createCategory({required CategoryModel data}) {
    db.writeTxnSync(() => db.categoryModels.putSync(data));
  }

  void updateCategory({required CategoryModel data}) async {
    CategoryModel? dbItem = await db.categoryModels.get(data.id);
    if (dbItem != null) {
      dbItem.categoryName = data.categoryName;

      db.writeTxnSync(() => db.categoryModels.putSync(dbItem));
    }
  }

  void deleteCategory(int id) {
    db.writeTxnSync(() => db.categoryModels.deleteSync(id));
  }
}
