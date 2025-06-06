import 'package:flutter/material.dart';
import 'package:travel_media/presentation/utils/logout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: () {
          logOut(context);
        }, icon: Icon(Icons.exit_to_app)),
      ),
    );
  }
}
