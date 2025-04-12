import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonWidgets {

  static Widget commonTitle(BuildContext context, String text) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        textStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

}