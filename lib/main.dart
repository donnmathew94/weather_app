import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:weather_app/theme/theme.dart';
import 'package:weather_app/theme/theme_controller.dart';
import 'app/data/weather.dart';
import 'app/modules/home.dart';

late Isar isar;
late Settings settings;

final ValueNotifier<Future<bool>> isDeviceConnectedNotifier =
ValueNotifier(InternetConnectionChecker().hasConnection);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setOptimalDisplayMode();
  await isarInit();
  Connectivity()
      .onConnectivityChanged
      .listen((ConnectivityResult result) async {
    if (result != ConnectivityResult.none) {
      isDeviceConnectedNotifier.value =
          InternetConnectionChecker().hasConnection;
    } else {
      isDeviceConnectedNotifier.value = Future(() => false);
    }
  });
  final String timeZoneName = await FlutterTimezone.getLocalTimezone();
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation(timeZoneName));
  runApp(MyApp());
}
Future<void> setOptimalDisplayMode() async {
  final List<DisplayMode> supported = await FlutterDisplayMode.supported;
  final DisplayMode active = await FlutterDisplayMode.active;

  final List<DisplayMode> sameResolution = supported
      .where((DisplayMode m) =>
  m.width == active.width && m.height == active.height)
      .toList()
    ..sort((DisplayMode a, DisplayMode b) =>
        b.refreshRate.compareTo(a.refreshRate));

  final DisplayMode mostOptimalMode =
  sameResolution.isNotEmpty ? sameResolution.first : active;

  await FlutterDisplayMode.setPreferredMode(mostOptimalMode);
}
Future<void> isarInit() async {
  isar = await Isar.open([
    SettingsSchema,
  ], directory: (await getApplicationSupportDirectory()).path);
  settings = await isar.settings.where().findFirst() ?? Settings();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: themeController.theme,
      theme: RainTheme.lightTheme,
      darkTheme: RainTheme.darkTheme,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Get.deviceLocale,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

