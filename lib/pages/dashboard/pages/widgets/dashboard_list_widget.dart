import 'package:dokan_demo/common/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DashboardListWidget extends StatelessWidget {
  const DashboardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        // Map<String, dynamic> data = ItemLists.dashboardList[index];

        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(data['route']);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0).r,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0).r,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      data['icon'],
                      color: data['color'],
                      size: 50
                    ),
                    const Gap(15),
                    Text(
                      data['title'],
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.primaryElement,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


