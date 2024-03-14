import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class DashboardItem extends StatelessWidget {
  final String text;
  final int number;
  final double height;
  const DashboardItem(
      {super.key,
      required this.text,
      required this.number,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: 170.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ColorsManager.maindeeporange,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyles.font13lightblackRegular.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                    textAlign: TextAlign.end,
                    "$number",
                    style: TextStyles.font20LightBlackBold
                        .copyWith(fontSize: 26.sp)),
              ]),
        ));
  }
}
