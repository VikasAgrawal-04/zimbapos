class EndPoints {
  //Areas
  static const String getAreas = '/get-area';
  static const String createArea = '/create-area';
  static const String updateArea = '/update-area';
  static const String deleteArea = '/delete-area';

  //Tables
  static const String getTableByArea = '/fetch-tables-id';

  //Categories
  static const String getCategories = '/get-category';
  static const String createCategory = '/create-category';
  static const String updateCategory = '/update-category';
  static const String deleteCategory = '/delete-category';

  //Main Groups
  static const String getMainGroup = '/get-main-groups';
  static const String createMainGroup = '/create-main-group';
  static const String updateMainGroup = '/update-main-group';
  static const String deleteMainGroup = '/delete-main-group';

  //Item Groups
  static const String getItemGroup = '/get-item-group';
  static const String createItemGroup = '/create-item-group';
  static const String updateItemGroup = '/update-item-group';
  static const String deleteItemGroup = '/delete-item-group';

  //Items
  static const String getAllItems = '/get-all-items';
  static const String getItemsByGroupId = '/get-items-id';

  //Workers
  static const String getWorkers = '/get-workers';
  static const String createWorker = '/create-worker';
  static const String deleteWorker = '/delete-worker';
  static const String updateWorker = '/update-worker';

  //Bill
  static const String createKot = '/action-temp-bill';
}
