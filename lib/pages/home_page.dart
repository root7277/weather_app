import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/widgets/humidity.dart';
import 'package:weather_app/widgets/rectangle.dart';
import 'package:weather_app/widgets/sunrise.dart';

import '../core/get_data.dart';
import '../modul/weather_modul.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  WeatherModul? weatherModul;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: FutureBuilder(
          future: getWeather(),
          builder: (context, snapshot) {
            weatherModul = Provider.of<WeatherModul>(context);
            if(snapshot.connectionState == ConnectionState.waiting){
              return Builder(builder: (context){
                return const Center(child: CircularProgressIndicator());
              });
            }
            if(snapshot.hasData){
              weatherModul = snapshot.data;
            }

            return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.menu, size: 30, color: Colors.white)),
                  const SizedBox(width: 20),
                  Text(weatherModul!.address, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white)),
                  const SizedBox(width: 2),
                  const Icon(Icons.location_on_outlined, color: Colors.white),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 140,
                    height: 100,
                    child: 
                    Row(
                      children: [
                        Text(weatherModul!.temp, style: const TextStyle(fontSize: 57, fontWeight: FontWeight.w600, color: Colors.white)),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text('°', style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600, color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/sun.svg', width: 60, height: 60),
                        const SizedBox(height: 10),
                        Text('${weatherModul!.tempmin}° / ${weatherModul!.tempmax}° Feels like ${weatherModul!.humidity}°', style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white)),
                        const SizedBox(height: 10),
                        Text(weatherModul!.datetime, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Colors.white)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Rectangle(txt: 'TODAY', icon1: Icons.light_mode, icon2: Icons.dark_mode, txt1: '20%', txt2: '20° / 27°'),
            const SizedBox(height: 9),
            const Rectangle(txt: 'FRIDAY', icon1: Icons.light_mode, icon2: Icons.dark_mode, txt1: '25%', txt2: '19° / 25°'),
            const SizedBox(height: 9),
            const Rectangle(txt: 'SATURDAY', icon1: Icons.cloud, icon2: Icons.cloudy_snowing, txt1: '40%', txt2: '20° / 15°'),
            const SizedBox(height: 9),
            const Rectangle(txt: 'SUNDAY', icon1: Icons.wb_sunny_sharp, icon2: Icons.wb_cloudy_sharp, txt1: '11%', txt2: '23° / 19°'),
            const SizedBox(height: 9),
            const Rectangle(txt: 'MONDAY', icon1: Icons.sunny, icon2: Icons.dark_mode, txt1: '12%', txt2: '25° / 20°'),
            const SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 30, 30, 30),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: TextButton(
                  onPressed: () {}, 
                  child: const Text(
                    'More',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SunRise(colorContainer: const Color.fromARGB(255, 254, 205, 31), imageContainer: 'assets/sunrise.svg', textContainerTitle: 'SUNRISE', textContainer: weatherModul!.sunrise),
                  SunRise(colorContainer: const Color.fromARGB(255, 238, 76, 41), imageContainer: 'assets/sunset.svg', textContainerTitle: 'SUNSET', textContainer: weatherModul!.sunset),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HUMIDITY(imageHum: 'assets/drop_2.svg', textHumTitle: 'HUMIDITY', textHum: '${weatherModul!.humidity}%'),
                  HUMIDITY(imageHum: 'assets/drop_2.svg', textHumTitle: 'WIND', textHum: '${weatherModul!.windspeed} km/h'),
                  HUMIDITY(imageHum: 'assets/uv.svg', textHumTitle: 'UV', textHum: weatherModul!.uvindex),
                ],
              ),
            )
          ],
        );
          }
        ),
      )
    );
  }
}