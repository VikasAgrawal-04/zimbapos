enum AppScreen {
  //home screen
  homeScreen,
  //login screen
  loginScreen,
  //CRUD screens @ Areas
  areasScreen,
  createAreasScreen,
  editAreaScreen,
  //CRUD screens @ Rate Sets
  rateSetScreen,
  editRateSetScreen,
  createRateSetsScreen,
  //CRUD screens @ Tables
  tableScreen,
  createTableScreen,
  editTableScreen,
  //CRUD screens @ Workers
  workerOverviewScreen,
  createWorkerScreen,
  editWorkerScreen,
  //Initial setup screen
  initialSetUpScreen,
  //CRUD screens @ Customer Category
  customerCategory,
  createCustomerCategory,
  editCustomerCategory,
  //CRUD screens @ Category
  category,
  createCategory,
  editCategory,
  //CRUD screens @ Main Group
  mainGroupScreen,
  createMainGroupScreen,
  editMainGroupScreen,
  //CRUD screens @ Item Group
  itemGroupScreen,
  createItemGroupScreen,
  editItemGroupScreen,
  //CRUD screens @ Vendors
  vendorScreen,
  createVendorScreen,
  editVendorScreen,
  //CRUD screens @ Expense Category
  expenseCategoryScreen,
  createExpenseCategoryScreen,
  editExpenseCategoryScreen,
  //CRUD screens @ Expenses
  expensesScreen,
  createExpenseScreen,
  editExpenseScreen,
  //Ordering dashboard screen
  orderDashboardScreen,
  //CRUD screens @ Taxes
  taxesScreen,
  createTaxScreen,
  editTaxScreen,
  //CRUD screens @ Items
  itemsScreen,
  createItemScreen,
  editItemScreen,
  //Outlet registration screen
  outletDataRegisterScreen,
  //CRUD screens @ Payments
  paymentsScreen,
  createPaymentsScreen,
  editPaymentsScreen,
  //CRUD screens @ Discounts
  discountScreen,
  createDiscountScreen,
  editDiscountScreen,
  settingsOverviewScreen,
  terminalSetUpScreen,
  terminalIdSetUpScreen,
  //CRUD screens @ Cards
  cardListScreen,
  createCardScreen,
  editCardScreen,
  cardActionScreen,
  //item selection
  itemsSelectionScreen,
  //CRUD screens @ Customer
  customerScreen,
  createCustomerScreen,
  editCustomerScreen,
  //CR screens @ Payin
  payInListScreen,
  createPayInScreen,
  viewPayInScreen,
  //CR sreens @ Payout
  payOutListScreen,
  createPayOutScreen,
  viewPayOutScreen,

  //User Management Screens
  createUserScreen,
  createUserRoleScreen,
  editUserRoleScreen,
  userRoleOverviewScreen,
  userOverviewScreen,
  sfMappingScreen,
  sfJunctionScreen,
  createSfJnScreen,
  editSfJnScreen
}

extension AppScreenExtension on AppScreen {
  //Add Name of the screen
  String get name {
    switch (this) {
      case AppScreen.homeScreen:
        return 'Home Screen';
      case AppScreen.rateSetScreen:
        return 'Rate Set Screen';
      case AppScreen.editRateSetScreen:
        return 'Edit Rate Set Screen';
      case AppScreen.createRateSetsScreen:
        return 'Create Rate Sets Screen';
      case AppScreen.tableScreen:
        return 'Table Screen';
      case AppScreen.createTableScreen:
        return 'Create Table Sets Screen';
      case AppScreen.editTableScreen:
        return 'Edit Table Screen';
      case AppScreen.loginScreen:
        return 'Login Screen';
      case AppScreen.areasScreen:
        return 'Areas Screen';
      case AppScreen.createAreasScreen:
        return 'Create Areas Screen';
      case AppScreen.editAreaScreen:
        return 'Edit Areas Screen';
      case AppScreen.workerOverviewScreen:
        return 'Worker Overview Screen';
      case AppScreen.createWorkerScreen:
        return 'Create Worker Screen';
      case AppScreen.editWorkerScreen:
        return 'Edit Worker Screen';
      case AppScreen.initialSetUpScreen:
        return 'Initial Setup Screen';
      case AppScreen.customerCategory:
        return 'Customer Category';
      case AppScreen.createCustomerCategory:
        return 'Create Customer Category';
      case AppScreen.editCustomerCategory:
        return 'Edit Customer Category';
      case AppScreen.category:
        return 'Category';
      case AppScreen.createCategory:
        return 'Create Category';
      case AppScreen.editCategory:
        return 'Edit Category';
      case AppScreen.mainGroupScreen:
        return 'Main Group';
      case AppScreen.createMainGroupScreen:
        return 'Create Main Group';
      case AppScreen.editMainGroupScreen:
        return 'Edit Main Group';
      case AppScreen.itemGroupScreen:
        return 'Item Group';
      case AppScreen.createItemGroupScreen:
        return 'Create Item Group';
      case AppScreen.editItemGroupScreen:
        return 'Edit Item Group';
      case AppScreen.vendorScreen:
        return 'Vendors';
      case AppScreen.createVendorScreen:
        return 'Create Vendor';
      case AppScreen.editVendorScreen:
        return 'Edit Vendor';
      case AppScreen.expenseCategoryScreen:
        return 'ExpenseCategory';
      case AppScreen.createExpenseCategoryScreen:
        return 'Create ExpenseCategory';
      case AppScreen.editExpenseCategoryScreen:
        return 'Edit ExpenseCategory';
      case AppScreen.expensesScreen:
        return 'Expenses';
      case AppScreen.createExpenseScreen:
        return 'Create Expense';
      case AppScreen.editExpenseScreen:
        return 'Edit Expense';
      case AppScreen.orderDashboardScreen:
        return 'Order Dashboard';
      case AppScreen.taxesScreen:
        return 'Taxes';
      case AppScreen.createTaxScreen:
        return 'Create Tax';
      case AppScreen.editTaxScreen:
        return 'Edit Tax';
      case AppScreen.itemsScreen:
        return 'Items Screen';
      case AppScreen.createItemScreen:
        return 'Create Item Screen';
      case AppScreen.editItemScreen:
        return 'Edit Item Screen';
      case AppScreen.outletDataRegisterScreen:
        return 'Outlet-Data-Registration-Screen';
      case AppScreen.paymentsScreen:
        return 'Payments Screen';
      case AppScreen.createPaymentsScreen:
        return 'Create Payment Screen';
      case AppScreen.editPaymentsScreen:
        return 'Edit Payment Screen';
      case AppScreen.discountScreen:
        return 'Discount Screen';
      case AppScreen.createDiscountScreen:
        return 'Create Discount Screen';
      case AppScreen.editDiscountScreen:
        return 'Edit Discount Screen';
      case AppScreen.settingsOverviewScreen:
        return 'Settings Overview Screen';
      case AppScreen.terminalSetUpScreen:
        return 'Terminal SetUp Screen';
      case AppScreen.terminalIdSetUpScreen:
        return 'Terminal ID Set up Screen';
      case AppScreen.cardListScreen:
        return 'Cards Screen';
      case AppScreen.createCardScreen:
        return 'Create Card Screen';
      case AppScreen.editCardScreen:
        return 'Edit Card Screen';
      case AppScreen.cardActionScreen:
        return 'Card Action Screen';
      case AppScreen.itemsSelectionScreen:
        return 'Items Selection Screen';
      case AppScreen.customerScreen:
        return 'Customer Screen';
      case AppScreen.createCustomerScreen:
        return 'Create Customer Screen';
      case AppScreen.editCustomerScreen:
        return 'Edit Customer Screen';
      case AppScreen.payInListScreen:
        return 'Pay In Screen';
      case AppScreen.createPayInScreen:
        return 'Create Pay In Screen';
      case AppScreen.viewPayInScreen:
        return 'View Pay In Screen';
      case AppScreen.payOutListScreen:
        return 'Pay Out Screen';
      case AppScreen.createPayOutScreen:
        return 'Create Pay Out Screen';
      case AppScreen.viewPayOutScreen:
        return 'View nPay Out Screen';
      case AppScreen.createUserScreen:
        return 'Create User Screen';
      case AppScreen.userOverviewScreen:
        return 'User Overview Screen';
      case AppScreen.createUserRoleScreen:
        return 'Create User Role Screen';
      case AppScreen.editUserRoleScreen:
        return 'Edit User Role Screen';
      case AppScreen.userRoleOverviewScreen:
        return 'User Role Overview Screen';
      case AppScreen.sfMappingScreen:
        return 'SfMapping Screen';
      case AppScreen.sfJunctionScreen:
        return 'SfJunction Screen';
      case AppScreen.createSfJnScreen:
        return 'Create SF Junction Screen';
      case AppScreen.editSfJnScreen:
        return 'Edit SF Junction Screen';
    }
  }

  // Add Path of the Screen
  String get path {
    switch (this) {
      case AppScreen.homeScreen:
        return '/';
      case AppScreen.rateSetScreen:
        return '/rate-set-screen';
      case AppScreen.editRateSetScreen:
        return '/edit-rate-set-screen';
      case AppScreen.createRateSetsScreen:
        return '/create-rate-sets-screen';
      case AppScreen.tableScreen:
        return '/table-screen';
      case AppScreen.createTableScreen:
        return '/create-table-screen';
      case AppScreen.editTableScreen:
        return '/edit-table-screen';
      case AppScreen.loginScreen:
        return '/login-screen';
      case AppScreen.areasScreen:
        return '/areas-screen';
      case AppScreen.createAreasScreen:
        return '/create-areas-screen';
      case AppScreen.editAreaScreen:
        return '/edit-areas-screen';
      case AppScreen.workerOverviewScreen:
        return '/worker-overview-screen';
      case AppScreen.createWorkerScreen:
        return '/create-worker-screen';
      case AppScreen.editWorkerScreen:
        return '/edit-worker-screen';
      case AppScreen.initialSetUpScreen:
        return '/initial-setup-screen';
      case AppScreen.customerCategory:
        return '/customer-category';
      case AppScreen.createCustomerCategory:
        return '/create-customer-category';
      case AppScreen.editCustomerCategory:
        return '/edit-customer-category';
      case AppScreen.category:
        return '/category';
      case AppScreen.createCategory:
        return '/create-category';
      case AppScreen.editCategory:
        return '/edit-category';
      case AppScreen.mainGroupScreen:
        return '/main-group';
      case AppScreen.createMainGroupScreen:
        return '/create-main-group';
      case AppScreen.editMainGroupScreen:
        return '/edit-main-group';
      case AppScreen.itemGroupScreen:
        return '/item-group';
      case AppScreen.createItemGroupScreen:
        return '/create-item-group';
      case AppScreen.editItemGroupScreen:
        return '/edit-item-group';
      case AppScreen.vendorScreen:
        return '/vendors';
      case AppScreen.createVendorScreen:
        return '/create-vendors';
      case AppScreen.editVendorScreen:
        return '/edit-vendors';
      case AppScreen.expenseCategoryScreen:
        return '/expense-category';
      case AppScreen.createExpenseCategoryScreen:
        return '/create-expense-category';
      case AppScreen.editExpenseCategoryScreen:
        return '/edit-expense-category';
      case AppScreen.expensesScreen:
        return '/expenses';
      case AppScreen.createExpenseScreen:
        return '/create-expense';
      case AppScreen.editExpenseScreen:
        return '/edit-expense';
      case AppScreen.orderDashboardScreen:
        return '/order-dashboard';
      case AppScreen.taxesScreen:
        return '/taxes-screen';
      case AppScreen.createTaxScreen:
        return '/create-tax-screen';
      case AppScreen.editTaxScreen:
        return '/edit-tax-screen';
      case AppScreen.itemsScreen:
        return '/items-screen';
      case AppScreen.createItemScreen:
        return '/create-item-screen';
      case AppScreen.editItemScreen:
        return '/edit-item-screen';
      case AppScreen.outletDataRegisterScreen:
        return '/outlet-data-registration-screen';
      case AppScreen.paymentsScreen:
        return '/payments-screen';
      case AppScreen.createPaymentsScreen:
        return '/create-payment-screen';
      case AppScreen.editPaymentsScreen:
        return '/edit-payment-screen';
      case AppScreen.discountScreen:
        return '/discount-screen';
      case AppScreen.createDiscountScreen:
        return '/create-discount-screen';
      case AppScreen.editDiscountScreen:
        return '/edit-discount-screen';
      case AppScreen.settingsOverviewScreen:
        return '/settings-overview-screen';
      case AppScreen.terminalSetUpScreen:
        return '/terminal-setup-screen';
      case AppScreen.terminalIdSetUpScreen:
        return '/terminal-id-setup-screen';
      case AppScreen.cardListScreen:
        return '/cards-screen';
      case AppScreen.createCardScreen:
        return '/create-card-screen';
      case AppScreen.editCardScreen:
        return '/edit-card-screen';
      case AppScreen.cardActionScreen:
        return '/card-action-screen';
      case AppScreen.itemsSelectionScreen:
        return '/items-selection-screen';
      case AppScreen.customerScreen:
        return '/customer-screen';
      case AppScreen.createCustomerScreen:
        return '/create-customer-screen';
      case AppScreen.editCustomerScreen:
        return '/edit-customer-screen';
      case AppScreen.payInListScreen:
        return '/pay-in-list-screen';
      case AppScreen.createPayInScreen:
        return '/create-pay-in-screen';
      case AppScreen.viewPayInScreen:
        return '/view-pay-in-screen';
      case AppScreen.payOutListScreen:
        return '/pay-out-list-screen';
      case AppScreen.createPayOutScreen:
        return '/create-pay-out-screen';
      case AppScreen.viewPayOutScreen:
        return '/view-pay-out-screen';
      case AppScreen.createUserScreen:
        return '/create-user-screen';
      case AppScreen.userOverviewScreen:
        return '/user-overview-screen';
      case AppScreen.createUserRoleScreen:
        return '/create-user-role-screen';
      case AppScreen.editUserRoleScreen:
        return '/edit-user-role-screen';
      case AppScreen.userRoleOverviewScreen:
        return '/user-role-screen';
      case AppScreen.sfMappingScreen:
        return '/sf-mapping-screen';
      case AppScreen.sfJunctionScreen:
        return '/sf-junction-screen';
      case AppScreen.createSfJnScreen:
        return '/create-sf-jn-screen';
      case AppScreen.editSfJnScreen:
        return '/edit-sf-jn-screen';
    }
  }
}
