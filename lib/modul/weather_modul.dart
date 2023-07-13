class WeatherModul {
  final String address;
  final String temp;
  final String tempmax;
  final String tempmin;
  final String windspeed;
  final String humidity;
  final String uvindex;
  final String sunrise;
  final String sunset;
  final String datetime;

  WeatherModul({ required this.temp, required this.tempmax, required this.tempmin, required this.windspeed, required this.humidity, required this.uvindex, required this.sunrise, required this.sunset, required this.datetime, required this.address, });

  factory WeatherModul.fromJson(Map data){
    return WeatherModul(
      temp: data['days'][0]['temp'],
      tempmax: data['days'][0]['tempmax'],
      tempmin: data['days'][0]['tempmin'],
      windspeed: data['days'][0]['windspeed'], 
      humidity: data['days'][0]['humidity'],
      uvindex: data['days'][0]['uvindex'],
      sunrise: data['days'][0]['sunrise'],
      sunset: data['days'][0]['sunset'],
      datetime: data['days'][0]['datetime'],
      address: data['address'] ,
    );
  }

  Map toJson(){
    return {
      'temp': temp,
      'tempmax': tempmax,
      'tempmin': tempmin,
      'windspeed': windspeed,
      'humidity': humidity,
      'uvindex': uvindex,
      'sunrise': sunrise,
      'sunset': sunset,
      'datetime': datetime,
      'address': address,
    };
  }
}

