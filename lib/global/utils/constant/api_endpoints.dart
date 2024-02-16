class EndPoints {
  //Areas (done)
  static const String getAreas = '/get-area';
  static const String createArea = '/create-area';
  static const String updateArea = '/update-area';
  static const String deleteArea = '/delete-area';

  //Tables (done)
  static const String getTableByArea = '/fetch-tables-id';
  static const String getTableList = '/get-tables';
  static const String createTable = '/create-table';
  static const String updateTable = '/update-table';
  static const String deleteTable = '/delete-table';

  //rate sets (done)
  static const String getRateSetList = '/get-ratesets';
  static const String createRateSet = '/create-ratesets';
  static const String updateRateSet = '/update-ratesets';
  static const String deleteRateSet = '/delete-ratesets';

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

  //Taxes (done)
  static const String getTaxList = '/get-taxes';
  static const String createTax = '/create-tax';
  static const String updateTax = '/update-tax';
  static const String deleteTax = '/delete-tax';

  //Workers
  static const String getWorkers = '/get-workers';
  static const String createWorker = '/create-worker';
  static const String deleteWorker = '/delete-worker';
  static const String updateWorker = '/update-worker';
  static const String getWaiters = '/get-waiters';

  //Terminal Configuration End Points
  static const String getAllTerminals = '/get-all-terminals';
  static const String getTerminalId = '/get-terminal-id';
  static const String updateTerminalDevice = '/update-terminal-deviceId';
  static const String createTerminal = '/create-terminal';
  static const String deleteTerminal = '/delete-terminal';

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
  static const String deleteKotItem = '/delete-kot-item';
  static const String createFinalBill = '/final-bill';

  //User Roles
  static const String getUserRoles = '/fetch-user-roles';
  static const String createUserRole = '/create-user-role';
  static const String updateUserRole = '/update-user-role';
  static const String deleteUserRole = '/delete-user-role';

  //Screen Function Mapping
  static const String getSfMapping = '/get-sf-mapping';
  static const String createSfMapping = '/create-sf-mapping';

  //User Screen Function Junction
  static const String getAllRoleScrnFn = '/get-all-sf-junction';
  static const String createScrnFnJunction = '/create-sf-junction';
  static const String updateScrnFnJunction = '/update-sf-junction';
  static const String deleteScrnFnJunction = '/delete-sf-junction';

  //Shift
  static const String getShiftId = '/get-shift-id';
  static const String startShift = '/start-shift';
  static const String endShift = '/end-shift';

  //Pay In & Out
  static const String getPayin = '/get-pay-in';
  static const String getPayout = '/get-pay-out';

  static const String createPayIn = '/create-payin';
  static const String createPayOut = '/create-payout';

  //Pay Mode Master
  static const String getPayMode = '/fetch-pay-mode';
  static const String createPayMode = '/create-pay-mode';
  static const String updatePayMode = '/update-pay-mode';
  static const String deletePayMode = '/delete-pay-mode';
}
