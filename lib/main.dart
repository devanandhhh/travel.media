import 'package:flutter/material.dart';
import 'package:travel_media/presentation/auth/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel.Media',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
