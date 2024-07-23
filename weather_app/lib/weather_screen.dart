import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:weather_app/additional_info_item.dart";
import "package:weather_app/hourly_forcast_item.dart";

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 16),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Rain',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            //weather forcast cards
            const Text(
              'Weather Forcast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForcastItem(
                      time: '00:00', temprature: '301.7', icon: Icons.cloud),
                  HourlyForcastItem(
                      time: '03:00', temprature: '300.52', icon: Icons.sunny),
                  HourlyForcastItem(
                      time: '06:00', temprature: '300.12', icon: Icons.cloud),
                  HourlyForcastItem(
                      time: '09:00', temprature: '301.7', icon: Icons.sunny),
                  HourlyForcastItem(
                      time: '12:00', temprature: '304.72', icon: Icons.cloud),
                ],
              ),
            ),

            const SizedBox(height: 20),
            //additional information
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(
                    icon: Icons.water_drop, label: "Humidity", value: "91"),
                AdditionalInfoItem(
                    icon: Icons.air, label: "Wind Speed", value: "7.67"),
                AdditionalInfoItem(
                    icon: Icons.beach_access, label: "Pressure", value: "1000"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
