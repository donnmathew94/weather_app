import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/controller/controller.dart';
import 'package:weather_app/widgets/desc_container.dart';
import 'package:weather_app/widgets/shimmer.dart';
import 'package:weather_app/widgets/sunset_sunrise.dart';
import 'package:weather_app/widgets/weather_daily.dart';
import 'package:weather_app/widgets/weather_now.dart';

import '../main.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final locationController = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async {
          await locationController.getLocationByPreference();
          // setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: ListView(
            children: [
              Obx(
                () => (locationController.locationResponse.location != null &&
                        locationController.isLoading.isFalse)
                    ? WeatherNow(
                        time:
                            "${DateTime.fromMillisecondsSinceEpoch(locationController.locationResponse.location!.localtimeEpoch!.toInt() * 1000)}",
                        weather: locationController
                                .locationResponse.current?.condition!.text ??
                            "clear",
                        degree: locationController.degreeUnit == "celsius"
                            ? "${locationController.locationResponse.current?.tempC?.toInt()}°C"
                            : "${locationController.locationResponse.current?.tempF?.toInt()}°F",
                        isDay: locationController
                                .locationResponse.current?.isDay ??
                            0,
                        condition: locationController
                                .locationResponse.current?.condition!.text ??
                            "",
                      )
                    : const MyShimmer(hight: 350),
              ),
              const SizedBox(
                height: 15,
              ),
              Obx(() => SunsetSunrise(
                    timeSunrise: locationController.locationResponse.forecast
                            ?.forecastday![0].astro!.sunrise ??
                        "--",
                    timeSunset: locationController.locationResponse.forecast
                            ?.forecastday![0].astro!.sunset ??
                        "--",
                  )),
              Obx(() => DescContainer(
                    humidity:
                        locationController.locationResponse.current?.humidity ??
                            0,
                    wind: locationController.locationResponse.current?.windKph
                            ?.toDouble() ??
                        0.0,
                    visibility: 0,
                    feels: locationController
                            .locationResponse.current?.feelslikeC
                            ?.toDouble() ??
                        0,
                  )),
              Obx(() => WeatherDaily(
                    forecastList: locationController
                            .locationResponse.forecast?.forecastday ??
                        [],
                    onTap: () => {},
                  ))
            ],
          ),
        ));
  }
}
