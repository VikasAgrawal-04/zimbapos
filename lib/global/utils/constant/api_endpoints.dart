class EndPoints {
  //Areas
  static const String getAreas = '/get-area';
  static const String createArea = '/create-area';
  static const String updateArea = '/update-area';
  static const String deleteArea = '/delete-area';

  //Tables
  static const String getTableByArea = '/fetch-tables-id';
  static const String getTableList = '/get-tables';
  static const String createTable = '/create-table';
  static const String updateTable = '/update-table';
  static const String deleteTable = '/delete-table';

  //Categories (done)
  static const String getCategories = '/get-category';
  static const String createCategory = '/create-category';
  static const String updateCategory = '/update-category';
  static const String deleteCategory = '/delete-category';

  //Main Groups (done)
  static const String getMainGroup = '/get-main-groups';
  static const String createMainGroup = '/create-main-group';
  static const String updateMainGroup = '/update-main-group';
  static const String deleteMainGroup = '/delete-main-group';

  //Item Groups (done)
  static const String getItemGroup = '/get-item-group';
  static const String getItemGroupList = '/get-item-group-list';
  static const String createItemGroup = '/create-item-group';
  static const String updateItemGroup = '/update-item-group';
  static const String deleteItemGroup = '/delete-item-group';

  //Items (done)
  static const String getAllItems = '/get-all-items';
  static const String getItemsByGroupId = '/get-items-id';
  static const String createItem = '/create-item';
  static const String updateItem = '/update-item';
  static const String deleteItem = '/delete-item';

  //Workers
  static const String getWorkers = '/get-workers';
  static const String createWorker = '/create-worker';
  static const String deleteWorker = '/delete-worker';
  static const String updateWorker = '/update-worker';

  //Customer category (done)
  static const String getCustomerCategories = '/get-customer-categories';
  static const String updateCustomerCategory = '/update-customer-category';
  static const String createCustomerCategory = '/create-customer-category';
  static const String deleteCustomerCategory = '/delete-customer-category';

  //Customer (done)
  static const String getCustomer = '/get-customer-list';
  static const String updateCustomer = '/update-customer';
  static const String createCustomer = '/create-customer';
  static const String deleteCustomer = '/delete-customer';

  //Bill
  static const String createKot = '/action-temp-bill';
  static const String getTempBill = '/get-temp-bill';
}
