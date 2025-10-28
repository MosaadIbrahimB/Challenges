import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomSocialLogin extends StatelessWidget {
  const CustomSocialLogin({
    super.key, required this.logo, required this.title, this.onTap,
  });
  final String logo ;
  final String title ;
  final VoidCallback? onTap ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8).r,
          border: Border.all(
            color: Color(0xffD1D5DB),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red,
                width: MediaQuery.sizeOf(context).width*.2),
            Image.asset(logo, width: 18.w, height: 18.h),
            SizedBox(width:10.w),
            Text(
                title,
                style:AppTextStyle.inter14w600
            ),
          ],
        ),
      ),
    );
  }
}
