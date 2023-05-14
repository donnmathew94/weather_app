import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/main.dart';

import '../../models/search_response.dart';
import '../api/api.dart';
import '../data/location_response.dart';

class LocationController extends GetxController {
  final isLoading = true.obs;
  final _latitude = 0.0.obs;
  final _longitude = 0.0.obs;
  final _district = ''.obs;
  final _city = ''.obs;
  final _degreeUnit = ''.obs;
  final _locationResponse = LocationResponse().obs;
  final _searchList = <SearchResponse>[].obs;

  LocationResponse get locationResponse => _locationResponse.value;

  String get degreeUnit => _degreeUnit.value;

  List<SearchResponse> get searchList => _searchList.value;

  setDegreeUnit(String tempUnit) {
    _degreeUnit.value = tempUnit;
  }

  String get district => _district.value;

  String get city => _city.value;

  Future<void> setLocation() async {
    isLoading.value = true;
    print("setLocation");
    _degreeUnit.value = settings.degrees;
    await getCurrentLocation();
  }

  Future<Position> determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> getCurrentLocation() async {
    print("getCurrentLocation");
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (await isDeviceConnectedNotifier.value && serviceEnabled) {
      Position position = await determinePosition();
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemarks[0];
      _latitude.value = position.latitude;
      _longitude.value = position.longitude;
      _district.value = '${place.administrativeArea}';
      _city.value = '${place.locality}';
      getLocationApi(position.latitude, position.longitude);
    } else if (!await isDeviceConnectedNotifier.value && serviceEnabled) {
      print("Service not available");
      Get.snackbar(
        'No Internet',
        'Turn on the Internet to get meteorological data.',
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        icon: const Icon(Iconsax.wifi),
        shouldIconPulse: true,
      );
    } else if (await isDeviceConnectedNotifier.value && !serviceEnabled) {
      Get.snackbar(
        'Location',
        'Enable the location service to get weather data for the current location.',
        duration: const Duration(seconds: 5),
        mainButton: TextButton(
          onPressed: () => Geolocator.openLocationSettings(),
          child: const Text(
            'Set.',
          ),
        ),
        icon: const Icon(Iconsax.location_slash),
        shouldIconPulse: true,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
      );
    } else if (!await isDeviceConnectedNotifier.value && !serviceEnabled) {
      Get.snackbar(
        'No Internet',
        'Turn on the Internet to get meteorological data.',
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        icon: const Icon(Iconsax.wifi),
        shouldIconPulse: true,
      );
      Get.snackbar(
       'Location',
        'Enable the location service to get weather data for the current location.',
        duration: const Duration(seconds: 5),
        mainButton: TextButton(
          onPressed: () => Geolocator.openLocationSettings(),
          child: const Text(
            'Set.',
          ),
        ),
        icon: const Icon(Iconsax.location_slash),
        shouldIconPulse: true,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
      );
    }
  }

  Future<void> getLocationApi(double latitude, double longitude) async {
    debugPrint("getLocationApi");
    isLoading.value = true;
    _locationResponse.value =
        (await WeatherAPI().getWeatherData(_latitude.value, _longitude.value))!;
    isLoading.value = false;
  }

  Future<void> getLocationByName(String query) async {
    debugPrint("getLocationByName");
    isLoading.value = true;
    _locationResponse.value = (await WeatherAPI().getWeatherByName(query))!;
    isLoading.value = false;
  }

  Future<List<SearchResponse>> getSuggestions(String query) async {
    debugPrint("getSuggestions query ${query.trim().length}");

    try {
      if (query.trim().isNotEmpty) {
        // isLoading.value = true;
        _searchList.value = (await WeatherAPI().searchPlaces(query))!;
        isLoading.value = false;
        debugPrint("searchPlaces length ${searchList.length}");
      }
      return searchList;
    } catch (e) {
      isLoading.value = false;
    }
    return [];
  }

}
