import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:travel_media/core/style/app_textstyle.dart';
import 'package:travel_media/presentation/bloc/login/login_bloc.dart';
import 'package:travel_media/presentation/pages/auth/forgot_p_screen/forgot_p_screen.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:travel_media/presentation/pages/auth/widgets/custom_textfield.dart';
import 'package:travel_media/presentation/pages/home/home_screen.dart';
import 'package:travel_media/presentation/utils/ksnakbar.dart';
import 'package:travel_media/presentation/utils/validator_service.dart';

import '../../../../core/colors/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20.0),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey there,  welcome back",
                style: AppTextStyles.acme(size: 25, color: kwhite),
              ),
              Gap(30),
              CustomTextField(
                controller: emailController,
                hintText: "Email id",
                validationMethod: (value) =>
                    ValidationService.validateEmail(value ?? ""),
              ),
              CustomTextField(
                controller: passwordController,
                hintText: "Password",
                validationMethod: (value) =>
                    ValidationService.validatePassword(value ?? ""),
              ),
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ForgotPScreen())),
                  child: Text(
                    "Forgot Password?",
                    style: AppTextStyles.acme(color: kwhite, size: 20),
                  )),
              Gap(50),
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccessState) {
                    ScaffoldMessenger.of(context).showSnackBar(kSnakbar(
                      text:state.message,
                    ));
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (ctx) => const HomeScreen()),
                        (route) => false);
                  } else if (state is LoginFaliureState) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(kSnakbar(text: state.errror));
                  }
                },
                builder: (context, state) {
                  if (state is LoginLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: darkGreen,
                      ),
                    );
                  }
                  return CustomAuthButton(
                      color: darkGreen,
                      withImage: false,
                      text: "Let's go",
                      function: () {
                        if (formkey.currentState!.validate()) {
                          log("email ${emailController.text} password ${passwordController.text}");
                          context.read<LoginBloc>().add(UserLoginSumbittedEvent(
                              email: emailController.text,
                              password: passwordController.text));
                        }
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
