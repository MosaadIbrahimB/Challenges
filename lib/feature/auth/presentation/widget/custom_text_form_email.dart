import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/valid_utils.dart';
class CustomTextFormEmail extends StatelessWidget {
  const CustomTextFormEmail({
    super.key, this.controller,
  });
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: ValidUtils.ifValidEmail,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8).r,
          borderSide: BorderSide(
            color: Color(0xffEDF1F3),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal:16.w, vertical: 12.h),
        hintText: 'Enter your email',
      ),
    );
  }
}
