import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../misc/apiUrl.dart';
import '../models/dailyWeather.dart';
import '../models/hourlyWeather.dart';
import '../models/weatherData.dart';
import '../models/weatherDataCurrent.dart';

class APIManager {
  WeatherData? _weatherData;

  Future<WeatherData> processData(var lat, var lon) async {
    var response = await http.get(Uri.parse(getURL(lat, lon)));
    debugPrint("$response");
    var jsonString = jsonDecode(response.body);
    debugPrint("$jsonString");
    _weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString),
        DailyWeather.fromJson(jsonString), HourlyWeather.fromJson(jsonString));

    return _weatherData!;
  }
}
