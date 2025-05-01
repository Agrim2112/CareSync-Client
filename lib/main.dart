import 'package:caresync/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: const ColorScheme(
              primary: Color(0xFF432C81),
              secondary: Colors.amber,
              surface: Color(0xFFF3F3F3),
              background: Color(0xFFFEFEFE),
              error: Colors.red,
              onPrimary: Colors.white,
              onSecondary: Colors.black,
              onSurface: Colors.black,
              onBackground: Colors.black,
              onError: Colors.white,
              brightness: Brightness.light,
            ),
            useMaterial3: true,
          ),
          home: HomePage(),
        );
      },
    );
  }
}

