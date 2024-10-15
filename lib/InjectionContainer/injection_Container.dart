import 'package:get_it/get_it.dart';
import 'package:taxian_super_admin_web/repo/api.dart';

import '../cache/shared_preference.dart';
import '../flavors/config/flavor_config.dart';
import '../repo/repository.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  final pref = Pref();
  await pref.init();
  locator.registerLazySingleton<Pref>(() => pref);
  locator.registerLazySingleton<FlavorConfig>(() => FlavorConfig());
  locator.registerLazySingleton<Repo>(() => Repo());
  locator.registerLazySingleton<ApiCaller>(() => ApiCaller());
}