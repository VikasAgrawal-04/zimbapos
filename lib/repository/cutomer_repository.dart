import 'package:isar/isar.dart';

import '../models/global_models/customer_model.dart';

class CustomerRepository {
  Isar db;
  CustomerRepository(this.db);

  Stream<List<CustomerModel>> streamCustomers() {
    return db.customerModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<List<CustomerModel>> getAllCustomers() async {
    return await db.customerModels.filter().isDeletedEqualTo(false).findAll();
  }

  Future<void> changeActive(int id, bool isActive) async {
    CustomerModel? model = await db.customerModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.customerModels.putSync(model);
      });
    }
  }

  void createCustomer({required CustomerModel data}) {
    db.writeTxnSync(() => db.customerModels.putSync(data));
  }

  Future<void> updateCustomer({required CustomerModel data}) async {
    CustomerModel? dbItem = await db.customerModels
        .filter()
        .idEqualTo(data.id)
        .and()
        .isDeletedEqualTo(false)
        .findFirst();
    if (dbItem != null) {
      dbItem.outletId = data.outletId;
      dbItem.customerName = data.customerName;
      dbItem.email = data.email;
      dbItem.outletId = data.outletId;
      dbItem.mobile = data.mobile;
      dbItem.createDate = data.createDate;
      dbItem.address1 = data.address1;
      dbItem.address2 = data.address2;
      dbItem.address3 = data.address3;
      dbItem.outletId = data.outletId;
      dbItem.city = data.city;
      dbItem.state = data.state;
      dbItem.country = data.country;
      dbItem.pincode = data.pincode;
      dbItem.gstNumber = data.gstNumber;
      dbItem.customerCategoryID = data.customerCategoryID;
      dbItem.dateOfBirth = data.dateOfBirth;
      dbItem.anniversaryDate = data.anniversaryDate;
      dbItem.creditLimitAmount = data.creditLimitAmount;
      dbItem.gender = data.gender;
      dbItem.balanceBonusPoints = data.balanceBonusPoints;
      dbItem.isActive = data.isActive;
      dbItem.isDeleted = data.isDeleted;
      db.writeTxnSync(() => db.customerModels.putSync(dbItem));
    }
  }

  void deleteCustomer(int id) {
    db.writeTxn(() async {
      final model = await db.customerModels.filter().idEqualTo(id).findFirst();
      if (model != null) {
        model.isDeleted = true;
        await db.customerModels.put(model);
      }
    });
  }
}
