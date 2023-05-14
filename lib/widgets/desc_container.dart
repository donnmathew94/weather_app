import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'desc.dart';
import 'message.dart';

class DescContainer extends StatelessWidget {
  const DescContainer({
    super.key,
    required this.humidity,
    required this.wind,
    required this.visibility,
    required this.feels,
  });
  final num humidity;
  final double wind;
  final double visibility;
  final double feels;

  @override
  Widget build(BuildContext context) {
    // final statusImFa = StatusImFa();
    final message = Message();
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.only(top: 22, bottom: 5),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DescWeather(
                imageName: 'assets/images/humidity.png',
                value: "$humidity",
                desc: 'humidity',
              ),
              DescWeather(
                imageName: 'assets/images/wind.png',
                value:"${wind}km/hr",
                desc: 'wind',
              ),
              DescWeather(
                imageName: 'assets/images/temperature.png',
                value: '$feels°',
                desc: 'feels',
              ),

            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
