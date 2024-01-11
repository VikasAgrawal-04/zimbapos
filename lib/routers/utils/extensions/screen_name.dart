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
    }
  }
}
