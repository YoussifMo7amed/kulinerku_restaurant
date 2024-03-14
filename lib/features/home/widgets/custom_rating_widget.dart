import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';

class CustomRatingWidget extends StatelessWidget {
  final String text;
  final Color color;
  const CustomRatingWidget({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(text, style: TextStyles.font13lightblackRegular),
            horizontalSpace(5.w),
            Container(
              height: 8.h,
              width: 210.w,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        verticalSpace(5.h)
      ],
    );
  }
}
