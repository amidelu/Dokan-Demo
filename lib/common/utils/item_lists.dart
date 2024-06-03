import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../values/app_colors.dart';

class ItemLists {
  static final dashboardList = [
    {
      'title': 'Attendance',
      'icon': Icons.fingerprint_rounded,
      'color': AppColors.primaryElement,
      'route': AppRoutes.attendancePage,
    },
    {
      'title': 'Notice',
      'icon': Icons.announcement,
      'color': AppColors.errorColor,
      'route': AppRoutes.noticePage,
    },
    {
      'title': 'Homework',
      'icon': Icons.class_outlined,
      'color': Colors.green,
      'route': AppRoutes.homeWorkPage,
    },
    {
      'title': 'Syllabus',
      'icon': Icons.format_indent_decrease_outlined,
      'color': Colors.teal,
      'route': AppRoutes.syllabusPage,
    },
    {
      'title': 'Result',
      'icon': Icons.receipt_sharp,
      'color': Colors.deepOrange,
      'route': AppRoutes.resultPage,
    },
  ];
}