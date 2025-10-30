import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed,  this.title,
  });
 final VoidCallback? onPressed;
 final String? title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff1D61E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8).r,
          ),
        ),
        child: Text(
          title??'Log In',
          style: AppTextStyle.inter12w500Gray.copyWith(color: Colors.white, fontSize: 14.sp),
        ),
      ),
    );
  }
}
