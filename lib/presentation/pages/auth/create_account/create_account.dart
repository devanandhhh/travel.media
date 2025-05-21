import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_media/core/colors/colors.dart';
import 'package:travel_media/core/style/app_textstyle.dart';
import 'package:travel_media/presentation/pages/auth/login_screen/login_screen.dart';
import 'package:travel_media/presentation/pages/auth/signup_screen/signup_screen.dart';

import '../widgets/custom_auth_button.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 42, right: 42.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(80),
              Text(
                "Exlplore\nDiscover\n&Wanderlust",
                style: AppTextStyles.aclonica(size: 50, color: kwhite),
              ),
              Gap(160),
              Text(
                "Plan your best Trips",
                style: AppTextStyles.adamina(size: 30, letterSpacing: -2),
              ),
              Gap(40),
              CustomAuthButton(
                function: () {},
                color: kwhite,
                withImage: true,
                text: "Continue with google",
              ),
              Gap(30),
              CustomAuthButton(
                  function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => SignupScreen()));
                  },
                  color: primaryGreen,
                  withImage: false,
                  text: "Create an account"),
              Gap(30),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Have an account?",
                        style: AppTextStyles.aclonica(
                          size: 15,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          "Log in",
                          style:
                              AppTextStyles.aclonica(size: 15, color: kwhite),
                        ),
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => LoginScreen())),
                      ),
                    ],
                  ),
                  Gap(30),
                  Text(
                    "by proceeding , you agree to our terms of use confirm  you have read our privacy and cookies staement",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.actor(
                        color: kwhite, size: 13, letterSpacing: -0.4),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
