enum AppScreen {
  homeScreen,
  loginScreen,
  cartScreen,
  areasScreen,
  rateSetScreen,
  createRateSetsScreen,
  tableScreen,
  createTableScreen,
  workerOverviewScreen,
  createWorkerScreen,
  editWorkerScreen,
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
      case AppScreen.workerOverviewScreen:
        return 'Worker Overview Screen';
      case AppScreen.createWorkerScreen:
        return 'Create Worker Screen';
      case AppScreen.editWorkerScreen:
        return 'Edit Worker Screen';
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
      case AppScreen.workerOverviewScreen:
        return '/worker-overview-screen';
      case AppScreen.createWorkerScreen:
        return '/create-worker-screen';
      case AppScreen.editWorkerScreen:
        return '/edit-worker-screen';
    }
  }
}
