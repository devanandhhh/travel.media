import 'package:flutter/material.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/style/app_textstyle.dart';
import '../create_account/create_account.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   precacheImage(AssetImage('assets/images/login_image.jpg'), context);
  //   navigateAfterDelay(context);
  // }
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _initialized = true;

      // ✅ Safe to use context here
      precacheImage(const AssetImage('assets/images/login_image.jpg'), context);

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const CreateAccount()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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

  // void navigateAfterDelay(BuildContext context) async {
  //   await Future.delayed(
  //     const Duration(seconds: 3),
  //   );
  //   Navigator.pushReplacement(
  //     // ignore: use_build_context_synchronously
  //     context,
  //     MaterialPageRoute(builder: (context) => C()),
  //   );
  // }
}
