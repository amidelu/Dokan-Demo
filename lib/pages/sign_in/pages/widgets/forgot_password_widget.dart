import 'package:dokan_demo/common/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      height: 45.h,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: AppColors.primaryElement,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
