import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/models/users/user.dart';
import 'views/home_page.dart';

void main() {
  final user = User(1, "Matt", "Testing");
  final Map<String, dynamic> serialized = user.toJson();
  final User deserialized = User.fromJson(serialized);

  print(serialized);
  print(deserialized);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
