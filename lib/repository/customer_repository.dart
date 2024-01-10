import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

class CustomerRepository {
  Isar db;
  CustomerRepository(this.db);

  Stream<List<CustomerCategoryModel>> streamCustCat() {
    return db.customerCategoryModels.where().watch(fireImmediately: true);
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

  void deleteCusCat(int id) {
    db.writeTxnSync(() => db.customerCategoryModels.deleteSync(id));
  }
}
