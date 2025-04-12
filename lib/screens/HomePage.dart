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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets.commonTitle(context, StringConstants.appBarText),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profilePic.png'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (int index) {
        },
      ),    );
  }
}


// Widget healthVitalCard(){
//  return Card(
//    child: ,
//  );
// }
