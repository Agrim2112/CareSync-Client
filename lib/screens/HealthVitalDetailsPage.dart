import 'package:caresync/utils/CommonFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthVitalDetailsPage extends StatefulWidget {
  final Color backgroundColour;
  final String iconPath;
  final String vitalType;

   HealthVitalDetailsPage({super.key, required this.backgroundColour,required this.iconPath,required this.vitalType});

  @override
  State<HealthVitalDetailsPage> createState() => _HealthVitalDetailsPageState();
}

class _HealthVitalDetailsPageState extends State<HealthVitalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          appBar(),
          SizedBox(height: 16.h,),
          vitalLogCard('Today', 'Lorem ipsum dolor sit amet, consectetur'),
          SizedBox(height: 4.h,),
          vitalLogCard('Yesterday', 'Lorem ipsum dolor sit amet, consectetur'),
          SizedBox(height: 4.h,),
          vitalLogCard('Sat, 29th Mar', 'Lorem ipsum dolor sit amet, consectetur'),
          SizedBox(height: 4.h,),
          vitalLogCard('Fri, 28th Mar', 'Lorem ipsum dolor sit amet, consectetur'),
        ],
      ),
    );
  }

  Widget appBar(){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:12.w, vertical: 12.h),
        child: Column(
          children: [
            SizedBox(height: 24.h,),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon:  Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.backgroundColour,
                  borderRadius: BorderRadius.circular(12.r)
                ),
                padding: EdgeInsets.all(16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CommonWidgets.vitalTitle(widget.vitalType),
                    SizedBox(width: 16.w),
                    Image.asset(
                      widget.iconPath,
                      width: 30.w,
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget vitalLogCard(String logTitle, logData) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonWidgets.notificationTitle(context, logTitle),
                    SizedBox(height: 4.h,),
                    CommonWidgets.notificationText(context, logData),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
