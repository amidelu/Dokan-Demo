import 'package:dokan_demo/common/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInTopWidget extends StatelessWidget {
  const SignInTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.4.sh,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/averroes_bg.jpg'),
            fit: BoxFit.cover
        ),
      ),
      child: Container(
        color: AppColors.primaryElement.withOpacity(0.7),
      ),
    );
  }
}
