import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/button.dart';
import 'number_page.dart';
import 'shopping_page.dart';
import 'weather/weather_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Advance"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonComponents(
                onPressed: () => Get.to(
                  ShoppingPage(),
                ),
                title: Text("Shopping Page"),
              ),
              ButtonComponents(
                onPressed: () => Get.to(
                  NumberPage(),
                ),
                title: Text("Number Page"),
              ),
              ButtonComponents(
                onPressed: () => Get.to(
                  WeatherPage(),
                ),
                title: Text("Weather Page"),
              ),
              ButtonComponents(
                onPressed: () => Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark()),
                title: Text("Change Themes"),
              )
            ]),
      ),
    );
  }
}
