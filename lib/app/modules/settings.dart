import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:weather_app/app/controller/controller.dart';
import 'package:weather_app/app/data/weather.dart';
import '../../main.dart';
import '../../theme/theme_controller.dart';
import '../../widgets/setting_links.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final themeController = Get.put(ThemeController());
  final locationController = Get.put(LocationController());

  String? appVersion;

  Future<void> infoVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
    });
  }

  @override
  void initState() {
    infoVersion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SettingLinks(
            icon: Icon(
              Iconsax.moon,
              color: context.theme.iconTheme.color,
            ),
            text: 'Dark theme',
            switcher: true,
            dropdown: false,
            info: false,
            value: Get.isDarkMode,
            onChange: (_) {
              if (Get.isDarkMode) {
                themeController.changeThemeMode(ThemeMode.light);
                themeController.saveTheme(false);
              } else {
                themeController.changeThemeMode(ThemeMode.dark);
                themeController.saveTheme(true);
              }
            },
          ),
          SettingLinks(
            icon: Icon(
              Iconsax.sun_1,
              color: context.theme.iconTheme.color,
            ),
            text: 'Degrees',
            switcher: false,
            dropdown: true,
            info: false,
            dropdownName: settings.degrees,
            dropdownList: const <String>['celsius', 'fahrenheit'],
            dropdownCange: (String? newValue) {
              isar.writeTxn(() async {
                settings.degrees =
                    newValue == 'celsius' ? 'celsius' : 'fahrenheit';
                locationController.setDegreeUnit(
                    newValue == 'celsius' ? 'celsius' : 'fahrenheit');
                isar.settings.put(settings);
              });
              setState(() {});
            },
          ),
          SettingLinks(
            icon: Icon(
              Iconsax.code_circle,
              color: context.theme.iconTheme.color,
            ),
            text: 'version',
            switcher: false,
            dropdown: false,
            info: true,
            textInfo: '$appVersion',
          ),
        ],
      ),
    );
  }
}
