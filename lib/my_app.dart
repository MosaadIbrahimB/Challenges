import 'package:challenge/feature/auth/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/auth/presentation/screen/sign_up_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 710),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Daily Ui Challenges',
      home: SignUpScreen(),
      ),
    );
  }
}
