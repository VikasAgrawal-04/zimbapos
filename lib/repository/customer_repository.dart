import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

class CustomerRepository {
  Isar db;
  CustomerRepository(this.db);

  Stream<List<CustomerCategoryModel>> streamCustCat() {
    return db.customerCategoryModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<List<CustomerCategoryModel>> getAllCusCat() async {
    return await db.customerCategoryModels
        .filter()
        .isDeletedEqualTo(false)
        .findAll();
  }

  Future<void> changeActive(int id, bool isActive) async {
    CustomerCategoryModel? model = await db.customerCategoryModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.customerCategoryModels.putSync(model);
      });
    }
  }

  void createCusCat({required CustomerCategoryModel data}) {
    db.writeTxnSync(() => db.customerCategoryModels.putSync(data));
  }

  Future<void> updateCusCat({required CustomerCategoryModel data}) async {
    CustomerCategoryModel? dbItem = await db.customerCategoryModels
        .filter()
        .custCategoryIdEqualTo(data.custCategoryId)
        .isDeletedEqualTo(false)
        .findFirst();
    if (dbItem != null) {
      dbItem.custCategoryName = data.custCategoryName;
      dbItem.custCategoryDiscount = data.custCategoryDiscount;
      dbItem.isActive = data.isActive;
      db.writeTxnSync(() => db.customerCategoryModels.putSync(dbItem));
    }
  }

  void deleteCusCat(String? custCatId) {
    db.writeTxn(() async {
      final model = await db.customerCategoryModels
          .filter()
          .custCategoryIdEqualTo(custCatId)
          .findFirst();
      if (model != null) {
        model.isDeleted = true;
        await db.customerCategoryModels.put(model);
      }
    });
  }
}
