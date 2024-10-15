import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:taxian_super_admin_web/controlers/loadingScreenControler/loading_screen_cubit.dart';
import 'package:taxian_super_admin_web/routes/route_helper.dart';
import 'package:taxian_super_admin_web/style/pallet.dart';
import 'package:taxian_super_admin_web/util/network/internet_handler.dart';
import 'package:taxian_super_admin_web/widgets/responsive/ResponsiveBuilder.dart';

import 'View/LoadingScreen/loading_screen.dart';
import 'flavors/config/flavor_config.dart';

final navigatorKey = GlobalKey<NavigatorState>();
Future mainCommon() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    Phoenix(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoadingScreenCubit>(
          create: (BuildContext context) => LoadingScreenCubit()..endLoading(),
        ),
      ],
      child: InternetHandler(
        child: MaterialApp(
          navigatorKey: navigatorKey,
          scrollBehavior: const ScrollBehavior().copyWith(overscroll: true),
          debugShowCheckedModeBanner: false,
          title: FlavorConfig.instance.appName,
          builder: (context, child) => ResponsiveBuilder(
            builder: (context) {
              return BotToastInit()(context, child);
            },
          ),
          navigatorObservers: [
            BotToastNavigatorObserver(),
          ],
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  backgroundColor: Pallet.background,
                  elevation: 0,
                  iconTheme: IconThemeData(color: Colors.black)),
              scaffoldBackgroundColor: Pallet.background,
              primaryColor: Pallet.primary,
              fontFamily: 'Roboto',
              visualDensity: VisualDensity.standard,
              cardTheme: const CardTheme(shadowColor: Color(0x0c000000)),
              canvasColor: Colors.white,
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: Pallet.primary,
              ),
              bottomSheetTheme: const BottomSheetThemeData(
                  backgroundColor: Colors.transparent)),
          onGenerateRoute: RouteHelper.generateRoute,
          initialRoute: LoadingScreen.id,
        ),
      ),
    );
  }
}