import 'build_flavor.dart';

/// Initialise and assign values to each specific flavor here
/// Current flavors [dev, prod]
class FlavorConfig {
  static final FlavorConfig _obj = FlavorConfig._internal();

  static FlavorConfig get instance => _obj;

  //flavor variables
  BuildFlavor? buildFlavor;

  String? baseUrl;
  String appName = "APP_NAME";
  //TODO: Handle the null
  String? dynamicLink;
  String? packageName;
  String? appStoreId;
  String? fcmServerKey;

  factory FlavorConfig() {
    return _obj;
  }

  FlavorConfig._internal();

  Future<void> setupFlavor({required BuildFlavor flavorConfig}) async {
    switch (flavorConfig) {
      case BuildFlavor.dev:
        {
          buildFlavor = BuildFlavor.dev;
          baseUrl = "http://ec2-13-234-188-240.ap-south-1.compute.amazonaws.com:9090";
          appName = "Texian Web (Dev)";
        }
        break;
      case BuildFlavor.prod:
        {
          buildFlavor = BuildFlavor.prod;
          baseUrl = "https://thepetnest.com";
          appName = "Texian";
        }
        break;
    }
  }
}
