import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_media/presentation/bloc/login/login_bloc.dart';
import 'package:travel_media/presentation/pages/auth/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Travel.Media',
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
