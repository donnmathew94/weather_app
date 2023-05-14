import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/app/controller/controller.dart';

import '../app/data/location_response.dart';
import 'status.dart';

class WeatherDaily extends StatefulWidget {
  const WeatherDaily({
    super.key,
    required this.forecastList,
    required this.onTap,
  });

  final List<Forecastday> forecastList;
  final Function() onTap;

  @override
  State<WeatherDaily> createState() => _WeatherDailyState();
}

class _WeatherDailyState extends State<WeatherDaily> {
  final locationController = Get.put(LocationController());

  final locale = Get.locale;
  final status = Status();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.forecastList.length,
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () =>
                      Get.to(() => {}, transition: Transition.downToUp),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            getDayOfWeek(
                                widget.forecastList[index].date.toString()),
                            style: context.theme.textTheme.labelLarge,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image.asset(
                              //   status.getImage7Day(0),
                              //   scale: 3,
                              // ),
                              SizedBox(
                                child: Image.network( "https:${widget.forecastList[index].day?.condition
                                    ?.icon ??
                                    ""}",width: 28,height: 28,),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  widget.forecastList[index].day?.condition
                                          ?.text ??
                                      "",
                                  style: context.theme.textTheme.labelLarge,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Obx(() => Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    locationController.degreeUnit == "celsius"
                                        ? "${widget.forecastList[index].day?.mintempC?.round() ?? ""}°C"
                                        : "${widget.forecastList[index].day?.mintempF?.round() ?? ""}°F",
                                    style: context.theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    ' / ',
                                    style: context.theme.textTheme.bodyMedium
                                        ?.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    locationController.degreeUnit == "celsius"
                                        ? "${widget.forecastList[index].day?.maxtempC?.round() ?? ""}°C"
                                        : "${widget.forecastList[index].day?.maxtempF?.round() ?? ""}°F",
                                    style: context.theme.textTheme.bodyMedium
                                        ?.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(),
          InkWell(
            onTap: widget.onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Weather forecast',
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getDayOfWeek(String strDate) {
    final dateTime = DateTime.parse(strDate);

    return DateFormat('EEEE').format(dateTime);
  }
}
