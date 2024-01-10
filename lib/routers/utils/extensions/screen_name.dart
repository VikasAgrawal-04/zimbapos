enum AppScreen { homeScreen, loginScreen, cartScreen, areasScreen }

extension AppScreenExtension on AppScreen {
  //Add Name of the screen
  String get name {
    switch (this) {
      case AppScreen.homeScreen:
        return 'Home Screen';
      case AppScreen.loginScreen:
        return 'Login Screen';
      case AppScreen.cartScreen:
        return 'Cart Screen';
      case AppScreen.areasScreen:
        return 'Areas Screen';
    }
  }

  // Add Path of the Screen
  String get path {
    switch (this) {
      case AppScreen.homeScreen:
        return '/';
      case AppScreen.loginScreen:
        return '/login';
      case AppScreen.cartScreen:
        return '/cart';
      case AppScreen.areasScreen:
        return '/areas';
    }
  }
}
