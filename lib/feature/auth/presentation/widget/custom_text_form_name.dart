import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomTextFormName extends StatelessWidget {
  const CustomTextFormName({
    super.key,
    this.controller,
    required this.hintText,
  });

  final TextEditingController? controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8).r,
          borderSide: BorderSide(color: Color(0xffEDF1F3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8).r,
          borderSide: BorderSide(color: Color(0xffEDF1F3)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        hintText: hintText ?? 'Enter your name',
        hintStyle: AppTextStyle.inter12w500Gray,
      ),
    );
  }
}
