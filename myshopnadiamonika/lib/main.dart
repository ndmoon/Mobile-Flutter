import 'package:flutter/material.dart';
import 'package:myshopnadiamonika/insertuser.dart';
import 'package:myshopnadiamonika/landingpage.dart';
import 'package:myshopnadiamonika/listalluser.dart';
import 'package:myshopnadiamonika/listproduct.dart';
import 'package:myshopnadiamonika/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
);
}
}