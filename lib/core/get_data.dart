import 'package:weather_app/modul/weather_modul.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<WeatherModul> getWeather() async {
  Uri url = Uri.parse('https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Samarkand/?key=F3PMQS2MHFJTTXRWJ87TG4Z8T');

  http.Response response = await http.get(url);

  Map data = jsonDecode(response.body);

  return WeatherModul.fromJson(data);
}