
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/style/app_textstyle.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.controller, required this.hintText,required this.validationMethod,this.isNumber =false});

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?) validationMethod;
  final bool isNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: AppTextStyles.acme(color: kwhite, size: 15),
        ),
        Gap(10),
        TextFormField(
          keyboardType:isNumber? TextInputType.number:null,
          controller: controller,maxLength:isNumber? 10:null,
          validator:(_)=> validationMethod(controller.text),
          style: AppTextStyles.acme(color: kwhite),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your $hintText",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: darkGreen),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: kwhite), // border color when not focused
            ),
          ),
          cursorColor: darkGreen,
        ),Gap(10)
      ],
    );
  }
}
