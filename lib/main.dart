import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/modul/weather_modul.dart';
import 'package:weather_app/pages/home_page.dart';


void main() {
  runApp(const WeatherScreen());
}


class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return InheritedProvider<WeatherModul>(
      create: (context) => WeatherModul(temp: '88.5', tempmax: '99.4', tempmin: '71.5', windspeed: '18.3', humidity: '20.2', uvindex: '10.0', sunrise: '05:15:50', sunset: '19:59:49', datetime: '2023-07-14', address: 'Samarkand'),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
} 

