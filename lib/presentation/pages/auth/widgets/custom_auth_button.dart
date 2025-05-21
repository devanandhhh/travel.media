
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/style/app_textstyle.dart';

class CustomAuthButton extends StatelessWidget {
  final Color color;
  final bool withImage;
  final String text;
  final Function() function;
  const CustomAuthButton(
      {super.key,
      required this.color,
      required this.withImage,
      required this.text,required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
        child: withImage
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset("assets/icons/google_logo.png"),
                  ),
                  Gap(20),
                  Text(
                    text,
                    style: AppTextStyles.aclonica(size: 20),
                  )
                ],
              )
            : Center(child: Text(text, style: AppTextStyles.aclonica(size: 20))),
      ),
    );
  }
}
