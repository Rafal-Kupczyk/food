enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.production;

  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.development:
        return 'Development version';
      case Flavor.production:
        return 'User version';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }
}

final appflavor = Config.appFlavor;
