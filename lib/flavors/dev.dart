import 'package:flutter/material.dart';

import '../InjectionContainer/injection_Container.dart';
import '../main.dart';
import 'config/build_flavor.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlavorConfig().setupFlavor(flavorConfig: BuildFlavor.dev);
  setup();
  await mainCommon();
}
