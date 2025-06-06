import 'package:flutter/material.dart';
import 'package:travel_media/data/shared_pref/shared_pref.dart';
import 'package:travel_media/presentation/pages/home/home_screen.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/style/app_textstyle.dart';
import '../create_account/create_account.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() async {
    await Future.delayed(const Duration(seconds: 3));
    final sharedprefz = await SharedPreference.getboolValue();

    if (sharedprefz != true) {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const CreateAccount()),
      );
    } else {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage('assets/images/login_image.jpg'), context);

    return Scaffold(
      backgroundColor: primaryGreen,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Travel.",
                  style: AppTextStyles.aclonica(
                    size: 50,
                  ),
                ),
                Text(
                  "Media",
                  style: AppTextStyles.aclonica(size: 50, color: darkGreen),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
