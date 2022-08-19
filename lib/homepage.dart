import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/weatherdetail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.place_rounded),
            Text('Tarkwa', style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Monday, Aug 16 2022',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        SizedBox(height: 20),
        Container(
          // color: Colors.white,
          // height: 200,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 0.5),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23°',
                        style: TextStyle(fontSize: 60),
                      ),
                      BoxedIcon(
                        WeatherIcons.day_cloudy,
                        size: 50,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Real Feel:23'),
                      Text('overcast'),
                    ],
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 250,
          child: Column(
            children: [
              WeatherDetail(label: 'Humidity', value: '25'),
              SizedBox(height: 10),
              WeatherDetail(label: 'UV Index', value: ''),
              SizedBox(height: 10),
              WeatherDetail(label: 'Wind Speed', value: '34.986'),
              SizedBox(height: 10),
              WeatherDetail(label: 'Rain Probability', value: '34.9'),
              SizedBox(height: 10),
              WeatherDetail(label: 'Pressure', value: '15.93Pa'),
            ],
          ),
        ),
      ],
    ));
  }
}
