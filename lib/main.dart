import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherScreen());
}


class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                  ),
                 ),
                 const SizedBox(
                  width: 20,
                 ),
                 const Text(
                  'Locate',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                 ),
                 const SizedBox(width: 2,),
                 const Icon(Icons.location_on, size: 20, color: Colors.white,),
                ],
              ),
            ),
            Container(
              child: const Row(
                children: [
                  Row(
                    children: [
                    Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          '14',
                          style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                     SizedBox(width: 2,),
                     Padding(
                       padding: EdgeInsets.only(bottom: 50),
                       child: Text(
                        'o',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                       ),
                     ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Icon(
                          Icons.cloudy_snowing,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '17° / 14° Feels like 12°',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Wed, 10 August 10:14 am',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Rectangle(txt: 'TODAY', icon1: Icons.cloudy_snowing, icon2: Icons.cloudy_snowing, txt1: '100%', txt2: '17° / 14°'),
            const SizedBox(height: 10),
            const Rectangle(txt: 'FRIDAY', icon1: Icons.cloudy_snowing, icon2: Icons.cloudy_snowing, txt1: '100%', txt2: '16° / 12°'),
            const SizedBox(height: 10),
            const Rectangle(txt: 'SATURDAY', icon1: Icons.cloud, icon2: Icons.cloudy_snowing, txt1: '40%', txt2: '20° / 15°'),
            const SizedBox(height: 10),
            const Rectangle(txt: 'SUNDAY', icon1: Icons.wb_sunny_sharp, icon2: Icons.wb_cloudy_sharp, txt1: '11%', txt2: '23° / 19°'),
            const SizedBox(height: 10),
            const Rectangle(txt: 'MONDAY', icon1: Icons.sunny, icon2: Icons.dark_mode, txt1: '12%', txt2: '25° / 20°'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 56, 56, 56),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: TextButton(
                  onPressed: (){}, 
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
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 191, 158, 41),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'SUNRISE',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '6:51 am',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 96, 37, 37),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.cloud_sync_rounded,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'SUNSET',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '5:50 pm',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 56, 56, 56),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.opacity,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'HUMIDITY',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '100%',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 56, 56, 56),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.air,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        'WIND',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '11 km/h',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 56, 56, 56),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.battery_charging_full_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'UV',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'LOW',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}




class Rectangle extends StatelessWidget {
  final String txt;
  final IconData icon1;
  final IconData icon2;
  final String txt1;
  final String txt2;

  const Rectangle({
    super.key,
    required this.txt,
    required this.icon1,
    required this.icon2,
    required this.txt1,
    required this.txt2,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 50,
      decoration: const BoxDecoration(
      color: Color.fromARGB(255, 56, 56, 56),
      borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 9, bottom: 10),
        child: Row(children: [
          Text(
            txt,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 15),
          Icon(
            icon1,
            size: 28,
            color: Colors.white,
          ),
          const SizedBox(width: 9,),
          Icon(
            icon2,
            size: 28,
            color: Colors.white,
          ),
          const SizedBox(width: 10,),
          const Icon(
            Icons.water_drop,
            size: 18,
            color: Colors.white,
          ),
          Text(
            txt1,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            txt2,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
       ),
      ),
    );
  }
}