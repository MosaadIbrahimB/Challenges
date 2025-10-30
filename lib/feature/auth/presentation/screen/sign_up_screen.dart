import 'package:challenge/core/extension/app_context_extension_theme.dart';
import 'package:challenge/core/utils/app_color.dart';
import 'package:challenge/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_button.dart';
import '../widget/custom_header.dart';
import '../widget/custom_login_switch_button.dart';
import '../widget/custom_phone_number.dart';
import '../widget/custom_sign_up_switch_button.dart';
import '../widget/custom_text_form_email.dart';
import '../widget/custom_text_form_name.dart';
import '../widget/custom_text_form_password.dart';
import '../widget/input_date_day_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? firstNameController = TextEditingController();
  TextEditingController? lastNameController = TextEditingController();
  TextEditingController? phoneNumberController = TextEditingController();
  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 24.h,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24).r,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 68.h,),
                CustomHeader(),
                SizedBox(height: 24.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 3).r,
                  color: AppColor.grayF4,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelect = true;
                            });
                          },
                          child: CustomSignUpSwitchButton(isSelect: isSelect),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelect = false;
                            });
                          },
                          child: CustomLoginSwitchButton(isSelect: isSelect),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            style: AppTextStyle.inter12w500Gray,
                          ),
                          SizedBox(height: 2.h),
                          CustomTextFormName(
                            controller: firstNameController,
                            hintText: 'First Name',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
                            style: AppTextStyle.inter12w500Gray,
                          ),
                          SizedBox(height: 2.h),
                          CustomTextFormName(
                            controller: lastNameController,
                            hintText: 'Last Name',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Text('Email', style: AppTextStyle.inter12w500Gray),
                SizedBox(height: 3.h),
                CustomTextFormEmail(controller: emailController),
                SizedBox(height: 16.h),
                InputDateDayWidget(data: 'Birth of date'),
                SizedBox(height: 16.h),
                Text('Phone Number', style: AppTextStyle.inter12w500Gray),
                SizedBox(height: 3.h),
                CustomPhoneNumber(phoneNumberController: phoneNumberController),
                SizedBox(height:16.h),
                Text(
                    'Set Password',
                    style:AppTextStyle.inter12w500Gray
                ),
                SizedBox(height:3.h),
                CustomTextFormPassword(controller: passwordController),
                SizedBox(height:24.h),
                CustomButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                   context.showSnackBar("Login Success",backgroundColor: Colors.blueAccent);
                  }
                }, title: 'Register',),
                SizedBox(height:24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }
}





