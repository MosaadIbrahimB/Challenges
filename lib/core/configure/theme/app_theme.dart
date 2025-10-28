
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_text_style.dart';

class AppTheme {
  static ThemeData themeLight() => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: _appBarTheme(),
    popupMenuTheme: _popupMenuTheme(),
    textTheme: _textTheme(),
  );

  static AppBarTheme? _appBarTheme() {
    return AppBarTheme(
      // backgroundColor: Colors.white,
      // elevation: 0,
      // scrolledUnderElevation: 0,
    );
  }

  static PopupMenuThemeData? _popupMenuTheme() {
    return PopupMenuThemeData(
      // color: Colors.white,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(8.r),
      //   side: BorderSide(color: Colors.grey.shade300, width: 1.0),
      // ),
      // textStyle: AppTextStyle.iBMP38w700,
      // menuPadding: EdgeInsets.zero,
    );
  }

  static TextTheme? _textTheme() {
    return TextTheme();
  }

}

