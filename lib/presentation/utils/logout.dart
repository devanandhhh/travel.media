import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_media/presentation/pages/auth/create_account/create_account.dart';
import 'package:travel_media/presentation/utils/ksnakbar.dart';

import '../../data/shared_pref/shared_pref.dart';

Future<dynamic> logOut(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        'Do You Want to Logout',
        style: GoogleFonts.aBeeZee(),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'No',
              style: GoogleFonts.aBeeZee(),
            )),
        TextButton(
            onPressed: () async {
              await SharedPreference.saveboolValue(false);
              
              Navigator.pushAndRemoveUntil(
                  // ignore: use_build_context_synchronously
                  context,
                  MaterialPageRoute(builder: (ctx) => CreateAccount()),
                  (route) => false);
              //selectedIndex = ValueNotifier<int>(0);
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(
                  kSnakbar(text: 'LogOut succesfully', ));
            },
            child: Text(
              'Yes',
              style: GoogleFonts.aBeeZee(),
            )),
      ],
    ),
  );
}
