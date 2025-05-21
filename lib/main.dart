import 'package:flutter/material.dart';
import 'package:travel_media/presentation/pages/auth/splash_screen/splash_screen.dart';

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
  //     theme: ThemeData(
  //   textSelectionTheme: TextSelectionThemeData(
  //     selectionColor: Colors.green.withValues(alpha: 22,green: 22),
  //     selectionHandleColor: Colors.green,
  //     cursorColor: Colors.green,
  //   ),
  // ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
