import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/payments_model.dart';

class PaymentsRepository {
  final Isar db;

  PaymentsRepository(this.db);

  Stream<List<PaymentModel>> streamPayments() {
    return db.paymentModels.where().watch(fireImmediately: true);
  }

  createPayment({required PaymentModel model}) {
    log(model.payTypeName.toString());
    db.writeTxnSync(() => db.paymentModels.putSync(model));
  }

  editPayment({required PaymentModel model}) async {
    log(model.id.toString());
    PaymentModel? dbItem = await db.paymentModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.paymentModels.putSync(dbItem!));
    }
  }

  deletePayment(int id) async {
    db.writeTxnSync(() {
      db.paymentModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    PaymentModel? model = await db.paymentModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.paymentModels.putSync(model);
      });
    }
  }
}
