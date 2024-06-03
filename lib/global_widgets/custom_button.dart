import 'package:dokan_demo/common/values/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      this.onTap,
      this.titleBold = false});

  final String title;
  final bool? titleBold;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.0,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryElement.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.primaryText,
                fontWeight: titleBold! ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
