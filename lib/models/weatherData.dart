import 'package:weather_00/models/dailyWeather.dart';
import 'package:weather_00/models/hourlyWeather.dart';
import 'package:weather_00/models/weatherDataCurrent.dart';

class WeatherData {
  WeatherDataCurrent? _current;
  DailyWeather? _daily;
  HourlyWeather? _hourly;
  WeatherData([
    this._current,
    this._daily,
    this._hourly,
  ]);

  WeatherDataCurrent getCurrentData() => _current!;

  DailyWeather getDailyWeather() => _daily!;

  HourlyWeather getHourlyWeather() => _hourly!;
}
