import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonWidgets {

  static Widget commonTitle(BuildContext context, String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  static Widget commonSubTitle(String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.mulish(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  static Widget commonText(String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.mulish(
            textStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  static Widget commonVitalReading(String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.mulish(
            textStyle: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  static Widget commonVitalReadingUnit(String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.mulish(
            textStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF818181),
            ),
          ),
        ),
      ],
    );
  }

  static Widget notificationTitle(BuildContext context, String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  static Widget notificationText(BuildContext context, String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  static Widget settingOption(String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF56428F),
            ),
          ),
        ),
      ],
    );
  }

  static Widget vitalTitle (String text) {
    return Wrap(
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF56428F),
            ),
          ),
        ),
      ],
    );
  }
}