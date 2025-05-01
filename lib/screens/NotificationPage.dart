import 'package:caresync/utils/CommonFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
        child: Column(
          children: [
            notificationCard(Colors.blue,'Notification Title','Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
            SizedBox(height: 8.h,),
            notificationCard(Colors.yellow,'Notification Title','Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
            SizedBox(height: 8.h,),
            notificationCard(Colors.indigo,'Notification Title','Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
          ],
        ),
      ),
    );
  }

  Widget notificationCard(Color backgroundColour, String notificationTitle, notificationText) {
    return Card(
      elevation: 2.0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 6.h, 0, 0),
              child: Container(
                width: 10.w,
                height: 10.w,
                decoration: BoxDecoration(
                  color: backgroundColour,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonWidgets.notificationTitle(context, notificationTitle),
                  SizedBox(height: 4.h,),
                  CommonWidgets.notificationText(context, notificationText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
