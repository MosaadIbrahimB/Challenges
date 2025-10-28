import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomNotHaveAcc extends StatelessWidget {
  const CustomNotHaveAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Don’t have an account? ',
              style:AppTextStyle.inter12w500Gray
          ),
          Text(
              'Sign Up ',
              style:AppTextStyle.inter12w600Blue
          ),
        ],
      ),
    );
  }
}
