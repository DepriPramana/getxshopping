import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/number.dart';
import 'components/button.dart';

class NumberPage extends StatelessWidget {
  @override
  Widget build(context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text("Number Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controller>(builder: (snapshot) {
              return Text(
                "${snapshot.count}",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              );
            }),
            ButtonComponents(
              onPressed: () => Get.to(Other()),
              title: Text("Go Other Page"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }
}

class Other extends StatelessWidget {
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}
