enum AppScreen {
  homeScreen,
  loginScreen,
  cartScreen,
  areasScreen,
  rateSetScreen,
  createRateSetsScreen,
  tableScreen,
  createTableScreen,
  customerCategory,
  createCustomerCategory,
  category,
  createCategory,
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
      case AppScreen.createRateSetsScreen:
        return 'Create Rate Sets Screen';
      case AppScreen.tableScreen:
        return 'Table Screen';
      case AppScreen.createTableScreen:
        return 'Create Table Sets Screen';
      case AppScreen.loginScreen:
        return 'Login Screen';
      case AppScreen.cartScreen:
        return 'Cart Screen';
      case AppScreen.areasScreen:
        return 'Areas Screen';
      case AppScreen.customerCategory:
        return 'Customer Category';
      case AppScreen.createCustomerCategory:
        return 'Create Customer Category';
      case AppScreen.category:
        return 'Category';
      case AppScreen.createCategory:
        return 'Create Category';
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
      case AppScreen.createRateSetsScreen:
        return '/create-rate-sets-screen';
      case AppScreen.tableScreen:
        return '/table-screen';
      case AppScreen.createTableScreen:
        return '/create-table-screen';
      case AppScreen.loginScreen:
        return '/login';
      case AppScreen.cartScreen:
        return '/cart';
      case AppScreen.areasScreen:
        return '/areas';
      case AppScreen.customerCategory:
        return '/customer-category';
      case AppScreen.createCustomerCategory:
        return '/create-customer-category';
      case AppScreen.category:
        return '/category';
      case AppScreen.createCategory:
        return '/create-category';
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
