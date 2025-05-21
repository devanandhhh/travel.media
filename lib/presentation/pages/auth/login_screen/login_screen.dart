import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_media/core/style/app_textstyle.dart';
import 'package:travel_media/presentation/pages/auth/forgot_p_screen/forgot_p_screen.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_textfield.dart';

import '../../../../core/colors/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: kwhite,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey there,  welcome back",
              style: AppTextStyles.acme(size: 25, color: kwhite),
            ),
            Gap(30),
            CustomTextField(controller: emailController, hintText: "Email id"),
            CustomTextField(
                controller: passwordController, hintText: "Password"),
            TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => ForgotPScreen())),
                child: Text(
                  "Forgot Password?",
                  style: AppTextStyles.acme(color: kwhite, size: 20),
                )),
            Gap(50),
            CustomAuthButton(
                color: darkGreen,
                withImage: false,
                text: "Let's go",
                function: () {})
          ],
        ),
      ),
    );
  }
}
