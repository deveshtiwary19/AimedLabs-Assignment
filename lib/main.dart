import 'package:flutter/material.dart';

import 'Containers/container_1.dart';
import 'Containers/container_2.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Removing the DEMO tag
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyScreen(),
    );
  }
}

//Following is the widget, that will the render the screen with required components
class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //White background
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //The container 1
            Container1(),
            //Some spacing required between these two containers
            SizedBox(
              height: 80,
            ),
            //The container 2
            Container2()
          ],
        ),
      ),
    );
  }
}
