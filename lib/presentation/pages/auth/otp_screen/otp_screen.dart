import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_media/core/style/app_textstyle.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_auth_button.dart';

import '../../../../core/colors/colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              "Enter OTP here",
              style: AppTextStyles.acme(size: 25, color: kwhite),
            ),Gap(30),
            Column(
              children: [
                Pinput(),
                 Gap(50),
            CustomAuthButton(color: darkGreen, withImage: false, text: "Let's go", function: (){})
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
