import 'package:isar/isar.dart';
import 'package:zimbapos/models/user_models/subscriber_model.dart';

class SubscriptionRepository {
  final Isar db;
  SubscriptionRepository(this.db);

  createSubScription({required SubscriberModel model}) {
    db.writeTxnSync(() => db.subscriberModels.putSync(model));
  }
}
