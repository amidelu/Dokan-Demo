import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.icon,
    this.keyboardType,
    this.obscure = false,
    this.isDone = false,
    this.onChanged,
  });

  final String? hintText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool? obscure;
  final bool? isDone;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscure! ? true : false,
        textInputAction: isDone! ? TextInputAction.done : TextInputAction.next,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
