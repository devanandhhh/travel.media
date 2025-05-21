import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_media/core/style/app_textstyle.dart';
import 'package:travel_media/presentation/pages/auth/otp_screen/otp_screen.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_textfield.dart';

import '../../../../core/colors/colors.dart';

class ForgotPScreen extends StatelessWidget {
   ForgotPScreen({super.key});
final emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kblack,
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
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20.0),
        child: Column(children: [ 
        Text("Reset your password",style: AppTextStyles.acme(size: 25,color: kwhite),),
        Gap(30),
        CustomTextField(controller:emailController , hintText: "Email id"),
        Gap(50),
        CustomAuthButton(color: darkGreen, withImage: false, text: "Sent OTP", function: ()=>Navigator.push(context,MaterialPageRoute(builder: (ctx)=>OtpScreen())))
        ],),
      ),
    );
  }
}