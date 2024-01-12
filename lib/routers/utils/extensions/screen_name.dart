enum AppScreen {
  homeScreen,
  loginScreen,
  areasScreen,
  createAreasScreen,
  editAreaScreen,
  rateSetScreen,
  editRateSetScreen,
  createRateSetsScreen,
  tableScreen,
  createTableScreen,
  editTableScreen,
  workerOverviewScreen,
  createWorkerScreen,
  editWorkerScreen,
  initialSetUpScreen,
  customerCategory,
  createCustomerCategory,
  editCustomerCategory,
  category,
  createCategory,
  editCategory,
  mainGroup,
  createMainGroup,
  itemGroup,
  createItemGroup
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
      case AppScreen.mainGroup:
        return 'Main Group';
      case AppScreen.createMainGroup:
        return 'Create Main Group';
      case AppScreen.itemGroup:
        return 'Item Group';
      case AppScreen.createItemGroup:
        return 'Create Item Group';
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
      case AppScreen.mainGroup:
        return '/main-group';
      case AppScreen.createMainGroup:
        return '/create-main-group';
      case AppScreen.itemGroup:
        return '/item-group';
      case AppScreen.createItemGroup:
        return '/create-item-group';
    }
  }
}
