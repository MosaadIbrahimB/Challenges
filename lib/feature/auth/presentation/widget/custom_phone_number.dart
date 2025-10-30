import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../generated/assets.dart';

class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({
    super.key,
    required this.phoneNumberController,
  });

  final TextEditingController? phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8).r,
        border: Border.all(color: Color(0xffEDF1F3)),
      ),
      child: Row(
        children: [
          Container(
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              // color: Colors.black87,
              border: Border(
                right: BorderSide(color: Color(0xffEDF1F3)),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                bottomLeft: Radius.circular(8.r),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 14.w),
                SvgPicture.asset(
                  Assets.imageUnitedKingdom,
                  width: 18.w,
                  height: 18.h,
                ),
                SizedBox(width: 7.w),
                Icon(Icons.keyboard_arrow_down, size: 25),
              ],
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w, vertical: 14.h),
                hintText: 'Enter your phone number',
                hintStyle: AppTextStyle.inter12w500Gray,
              ),
              controller: phoneNumberController,
            ),
          ),
        ],
      ),
    );
  }
}
