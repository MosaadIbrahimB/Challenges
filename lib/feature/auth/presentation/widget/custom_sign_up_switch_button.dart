import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomSignUpSwitchButton extends StatelessWidget {
  const CustomSignUpSwitchButton({super.key, required this.isSelect});

  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelect ? AppColor.white : AppColor.grayF4,
      padding: EdgeInsets.symmetric(horizontal: 53, vertical: 8).r,
      child: Text(
        "Sign Up",
        style:
        isSelect
            ? AppTextStyle.inter14w600Black7d.copyWith(
          color: Color(0xff232447),
        )
            : AppTextStyle.inter14w600Black7d,
      ),
    );
  }
}
