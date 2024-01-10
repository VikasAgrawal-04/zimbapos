enum AppScreen {
  homeScreen,
  rateSetScreen,
  createRateSetsScreen,
  tableScreen,
  createTableScreen
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
    }
  }
}
