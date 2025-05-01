import 'package:caresync/utils/CommonFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        children: [
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profilePic.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 25.h,
                    width: 25.h,
                    child: Image.asset('assets/images/edit_icon.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h,),
          CommonWidgets.commonTitle(context, 'Agrim Gupta'),
          SizedBox(height: 24.h,),
          settingOption('assets/images/account_icon.png','Account', (){}),
          settingOption('assets/images/notifications_icon.png','Notification', (){}),
          settingOption('assets/images/appearance_icon.png','Appearance', (){}),
          settingOption('assets/images/security_icon.png','Privacy and Security', (){}),
          settingOption('assets/images/sound_icon.png','Sound', (){}),
          settingOption('assets/images/language_icon.png','Language', (){}),
        ],
      ),
    );
  }

  Widget settingOption(String imagePath, String text, VoidCallback onTap,) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        child: Row(
          children: [
            Image.asset(
                imagePath,
              height: 15.h,
              width: 15.h,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: CommonWidgets.settingOption(text),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.w,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
