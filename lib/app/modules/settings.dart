import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:weather_app/app/controller/controller.dart';
import 'package:weather_app/app/data/weather.dart';
import '../../main.dart';
import '../../models/search_response.dart';
import '../../theme/theme_controller.dart';
import '../../widgets/setting_links.dart';
import 'home.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                setState(() {});
              });
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
          Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: context.theme.colorScheme.primaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const SizedBox(width: 5),
                          Icon(
                            Iconsax.location,
                            color: context.theme.iconTheme.color,
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              "Default location",
                              style: context.theme.textTheme.titleMedium,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(settings.defaultLocation),
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () async {
                            final result = await showSearch<String>(
                              context: context,
                              delegate: DataSearch(locationController, [
                                SearchResponse(name: 'Gps'),
                                SearchResponse(name: 'Thiruvananthapuram'),
                                SearchResponse(name: 'New Delhi'),
                                SearchResponse(name: 'Bangalore'),
                              ]),
                            );
                            if (result != null) {
                              isar.writeTxn(() async {
                                settings.defaultLocation = result;
                                isar.settings.put(settings);
                                if (result == "Gps") {
                                  await locationController.getLocationByGps();
                                } else {
                                  showToast();
                                  await locationController
                                      .getLocationByName(result);
                                }
                                setState(() {});
                              });

                            }
                            debugPrint("onPressed $result");
                          },
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
      msg: "Default location will be preferred over Gps on next launch.",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16.0
  );
}
