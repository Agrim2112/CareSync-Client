import 'package:caresync/utils/CommonFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no_history_icon.png',
              height: 200.h,
            ),
            SizedBox(
              height: 16.h,
            ),
            CommonWidgets.commonTitle(context, 'No records found'),
          ],
        ),
      ),
    );
  }
}
