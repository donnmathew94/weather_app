import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/app/data/location_response.dart';

import '../../models/search_response.dart';

class WeatherAPI {
  static const API_KEY = "b14691e03f234542bbb182744230905";

  final Dio dio = Dio()..options.baseUrl = 'http://api.weatherapi.com/v1/';

  Future<LocationResponse?> getWeatherData(double? lat, double? lon) async {
    try {
      var forecastUrl = "forecast.json?key=$API_KEY&days=4&q=$lat,$lon&aqi=no";

      Response responseHourly = await dio.get(forecastUrl);
      LocationResponse locationResponse =
          LocationResponse.fromJson(responseHourly.data);
      print("locationResponse ${locationResponse.location?.name}");
      return locationResponse;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<LocationResponse?> getWeatherByName(String query) async {
    print("getWeatherByName");
    try {
      var forecastUrl = "forecast.json?key=$API_KEY&days=4&q=$query&aqi=no";

      Response responseHourly = await dio.get(forecastUrl);
      LocationResponse locationResponse =
          LocationResponse.fromJson(responseHourly.data);
      print("locationResponse ${locationResponse.location?.name}");
      return locationResponse;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<List<SearchResponse>?> searchPlaces(String query) async {
    debugPrint("searchPlaces");
    try {
      var searchUrl = "search.json?key=$API_KEY&q=$query";
      Response response = await dio.get(searchUrl);
      print(response.realUri);

      List<SearchResponse> searchList = List<SearchResponse>.from(
          response.data.map((x) => SearchResponse.fromJson(x)));
      print("searchPlaces res length ${searchList.length}");
      return searchList;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
