import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
class CustomLine extends StatelessWidget {
  const CustomLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            color: Color(0xffEDF1F3),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0).r,
          child: Text(
              'Or',
              style:AppTextStyle.inter12w500Gray
          ),
        ),
        Expanded(
          child: Container(
            height: 1.h,
            color: Color(0xffEDF1F3),
          ),
        ),

      ],
    );
  }
}
