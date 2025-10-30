import 'package:challenge/core/extension/app_context_extension_theme.dart';
import 'package:challenge/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../generated/assets.dart';
import '../widget/custom_button.dart';
import '../widget/custom_line.dart';
import '../widget/custom_not_have_acc.dart';
import '../widget/custom_social_login.dart';
import '../widget/custom_text_form_email.dart';
import '../widget/custom_text_form_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   TextEditingController? emailController=TextEditingController();
    TextEditingController? passwordController=TextEditingController();


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
                SvgPicture.asset(Assets.imageLogoAll, width: 101.w, height: 18.36.h),
                SizedBox(height: 32.h,),
                Text(
                  'Sign in to your \nAccount',
                  style:AppTextStyle.inter32w700Black1A
                ),
                SizedBox(height:12.h),
                Text(
                  'Enter your email and password to log in ',
                  style:AppTextStyle.inter12w500Gray
                ),
                SizedBox(height: 33.h,),
                Text(
                    'Email',
                    style:AppTextStyle.inter12w500Gray
                ),
                SizedBox(height:3.h),
                CustomTextFormEmail(controller: emailController),
                SizedBox(height:18.h),
                Text(
                    'Password',
                    style:AppTextStyle.inter12w500Gray
                ),
                SizedBox(height:3.h),
                CustomTextFormPassword(controller: passwordController),
                SizedBox(height:16.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      'Forgot Password?',
                      style:AppTextStyle.inter12w600Blue
                  ),
                ),
                SizedBox(height:24.h),
                CustomButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                   context.showSnackBar("Login Success",backgroundColor: Colors.blueAccent);
                  }
                }),
                SizedBox(height:24.h),
                CustomLine(),
                SizedBox(height:16.h),
                CustomSocialLogin(title: 'Continue with Google',logo: Assets.imageGoogle,),
                SizedBox(height:15.h),
                CustomSocialLogin(title: 'Continue with Facebook',logo: Assets.imageFace,),
                SizedBox(height:53.h),
                CustomNotHaveAcc(),
                SizedBox(height:15.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  dispose(){
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }
}






