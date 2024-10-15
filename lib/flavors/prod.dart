import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'config/build_flavor.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlavorConfig().setupFlavor(flavorConfig: BuildFlavor.prod);
  await mainCommon();
}
