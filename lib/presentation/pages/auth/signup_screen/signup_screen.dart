import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_media/core/colors/colors.dart';
import 'package:travel_media/core/style/app_textstyle.dart';
import 'package:travel_media/data/models/sign_up_model.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:travel_media/presentation/utils/validator_service.dart';

import '../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join the Travel media Community",
                  style: AppTextStyles.acme(
                      color: kwhite, letterSpacing: 2, size: 25),
                ),
                Gap(30),
                CustomTextField(
                  controller: userNameController,
                  hintText: "Username",
                  validationMethod: (value) =>
                      ValidationService.validateName(value ?? ""),
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: "Email id",
                  validationMethod: (value) =>
                      ValidationService.validateEmail(value ?? ""),
                ),
                CustomTextField(
                  controller: phoneNumberController,
                  hintText: "Phone number",
                  validationMethod: (value) =>
                      ValidationService.validateMobileNumber(value ?? ""),
                  isNumber: true,
                ),
                CustomTextField(
                  controller: passwordController,
                  hintText: "Password",
                  validationMethod: (value) =>
                      ValidationService.validatePassword(value ?? ""),
                ),
                CustomTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm password",
                  validationMethod: (value) =>
                      ValidationService.validateConfirmPassword(
                          passwordController.text, value ?? ""),
                ),
                Gap(50),
                CustomAuthButton(
                    color: darkGreen,
                    withImage: false,
                    text: "Let's go",
                    function: () {
                      if (formkey.currentState!.validate()) {
                        final model = SignUpModel(
                            userName: userNameController.text,
                            email: emailController.text,
                            phoneNumber: phoneNumberController.text,
                            password: passwordController.text,
                            confirmPassword: confirmPasswordController.text);
                        log("values are here ${model.userName}");
                      } else {
                        log("check fields");
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
