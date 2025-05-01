import 'package:caresync/screens/HealthVitalDetailsPage.dart';
import 'package:caresync/screens/HistoryPage.dart';
import 'package:caresync/screens/NotificationPage.dart';
import 'package:caresync/screens/SettingsPage.dart';
import 'package:caresync/utils/BottomNavigationBar.dart';
import 'package:caresync/utils/StringConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:caresync/utils/CommonFile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
    });
  }

  void _onItemTapped(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _selectedIndex = index;
      });
    });
  }


  final List<String> _appBarTitles = [
    StringConstants.appBarText,
    StringConstants.historyTitle,
    StringConstants.notificationsTitle,
    StringConstants.settingsTitle,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title:
            CommonWidgets.commonTitle(context, _appBarTitles[_selectedIndex]),
        actions: [
          _selectedIndex == 0
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profilePic.png'),
                  ),
                )
              : Container()
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          dashboardPage(),
          const HistoryPage(),
          const NotificationPage(),
          const SettingsPage()
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget dashboardPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                healthVitalCard(
                    Color(0xFFFBF0F3),
                    'assets/images/heart_rate_icon.png',
                    'Heart Rate',
                    '98',
                    'bpm',
                    'Normal'),
                SizedBox(
                  width: 12.w,
                ),
                healthVitalCard(Color(0xFFD0F5CC), 'assets/images/ecg_icon.png',
                    'ECG', '0.1', 'mV', 'Normal'),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                healthVitalCard(
                    Color(0xFFF8DEBD),
                    'assets/images/gyroscope_icon.png',
                    'Gyroscope',
                    '38',
                    'x',
                    'Normal'),
                SizedBox(
                  width: 12.w,
                ),
                healthVitalCard(Color(0xFFD0FBFF), 'assets/images/spo2_icon.png',
                    'SpO2', '95', '%', 'Normal'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget healthVitalCard(
      Color backgroundColour,
      String iconPath,
      String vitalType,
      String vitalReading,
      String vitalUnit,
      String vitalLevel) {
    return SizedBox(
      width: 160.w,
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.grey,
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HealthVitalDetailsPage(
                  backgroundColour: backgroundColour,
                  iconPath: iconPath,
                  vitalType: vitalType,
                ),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: backgroundColour,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Image.asset(
                        iconPath,
                        width: 15.w,
                        height: 15.h,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    CommonWidgets.commonSubTitle(vitalType)
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Baseline(
                            baseline: 24.sp,
                            baselineType: TextBaseline.alphabetic,
                            child: CommonWidgets.commonVitalReading(vitalReading),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Flexible(
                          child: Baseline(
                            baseline: 20.sp,
                            baselineType: TextBaseline.alphabetic,
                            child: CommonWidgets.commonVitalReadingUnit(vitalUnit),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: backgroundColour,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: CommonWidgets.commonText(vitalLevel))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
