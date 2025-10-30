import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../generated/assets.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(Assets.imageLogoIcon, width: 27.w, height: 27.h),
          SizedBox(height: 24.h),
          Text('Get Started now', style: AppTextStyle.inter32w700Black1A),
          SizedBox(height: 12.h),
          Text(
            'Create an account or log in to explore',
            style: AppTextStyle.inter12w500Gray,
          ),
          Text('about our app', style: AppTextStyle.inter12w500Gray),
        ],
      ),
    );
  }
}
