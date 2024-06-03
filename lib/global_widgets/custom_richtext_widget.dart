import 'package:dokan_demo/common/values/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRichTextWidget extends StatelessWidget {
  const CustomRichTextWidget({super.key, this.title, this.data});
  final String? title;
  final String? data;

  @override
  Widget build(BuildContext context) {
    return RichText(
      softWrap: true,
      text: TextSpan(children: [
        TextSpan(
          text: '$title: ',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold, color: AppColors.primaryElement,),
        ),
        TextSpan(
          text: data,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ]),
    );
  }
}
