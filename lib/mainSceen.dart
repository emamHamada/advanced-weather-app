import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_00/widgets/LowerPart/weatherDetails.dart';
import 'package:weather_00/widgets/UpperPart/weatherCards.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'controller/globalController.dart';

class MainScreen extends StatelessWidget {
  final GlobalController weatherController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Obx(
        () => weatherController.loadingCheck().isFalse
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    WeatherCard(
                      width: width,
                      height: height * 0.80,
                      dailyWeather:
                          weatherController.getData().getDailyWeather(),
                    ),
                    SizedBox(height: width * 0.08),
                    WeatherDetail(
                      width: width,
                      height: height,
                      hourly: weatherController.getData().getHourlyWeather(),
                      currentWeather:
                          weatherController.getData().getCurrentData(),
                    ),
                  ],
                ),
              )
            : Center(child: SpinKitCubeGrid(
          color: Colors.blue,
          size: 50.0,
        ),),
      )),
    );
  }
}
