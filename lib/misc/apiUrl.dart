import 'package:weather_00/api/api_key.dart';

final _baseUrl = "https://api.openweathermap.org/data/2.5/onecall?";
final _lat = "lat=";
final _lon = "&lon=";
final _units = "&units=metric";
final _exclude = "&exclue=minutely";
final _appid = "&appid=";

const String whatsApp = "https://wa.me/qr/GMPYOHQYGGLJH1";
const String github = "https://github.com/emamHamada";
const String email = "https://hamada152emam@gmail.com";
const String linkedIn = "https://www.linkedin.com/in/hamada-emam-ab5042227/";
/*
01201079423
Email:  hamada152emam@gmail.com
GitHub:  https://github.com/emamHamada
LinkedIn:  https://www.linkedin.com/in/hamada-emam-ab5042227/
*/
String getURL(var lat, var lon) {
  String _url;
  _url = _baseUrl +
      _lat +
      lat.toString() +
      _lon +
      lon.toString() +
      _units +
      _exclude +
      _appid +
      key;
  return _url;
}
