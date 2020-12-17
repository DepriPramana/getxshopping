import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getxshopping/cubit/weather_cubit.dart';
import 'package:getxshopping/data/weather_repository.dart';

import 'components/weather_search_page.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Search"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: BlocProvider(
          create: (context) => WeatherCubit(FakeWeatherRepository()),
          child: WeatherSearchPage(),
        ),
      ),
    );
  }
}
