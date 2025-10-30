import 'package:challenge/core/utils/valid_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomTextFormPassword extends StatefulWidget {
  const CustomTextFormPassword({
    super.key, this.controller,
  });
  final TextEditingController? controller;

  @override
  State<CustomTextFormPassword> createState() => _CustomTextFormPasswordState();
}

class _CustomTextFormPasswordState extends State<CustomTextFormPassword> {
   bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: ValidUtils.ifValidPassword,
      obscureText: _isObscure,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8).r,
            borderSide: BorderSide(
              color: Color(0xffEDF1F3),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8).r,
            borderSide: BorderSide(color: Color(0xffEDF1F3)),

          ),
          contentPadding: EdgeInsets.symmetric(horizontal:16.w, vertical: 12.h),
          hintText: 'Enter your password',
          hintStyle: AppTextStyle.inter12w500Gray,
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                _isObscure=!_isObscure;
              });
            },
            child: Icon(
              _isObscure ? Icons.visibility_off :
              Icons.visibility,color:Color(0xffACB5BB) ,),
          )
      ),

    );
  }
}
