import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/features/home/widgets/dashboard_item.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';

class TextTitleAndDashBoard extends StatelessWidget {
  const TextTitleAndDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:14.dm,vertical: 8.dm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Dashboard",
          style: TextStyles.font22LightBlackBold.copyWith(
            fontSize: 24.sp,
          ),
        ),
        verticalSpace(10.h),
        const Row(
          children: [
            DashboardItem(
              text: "New reviews",
              number: 1,
              height: 80,
            ),
            Expanded(child: SizedBox()),
            DashboardItem(
              text: "Total Clicked",
              number: 10,
              height: 80,
            ),
          ],
        ),
        verticalSpace(20.h),
          Row(
          children: [
            DashboardItem(
              text: "Avg. Star Earned Today",
              number: 5,
              height: 100.h,
            ),
            Expanded(child: SizedBox()),
            DashboardItem(
              text: "Videos to be reviewed",
              number: 2,
              height: 100.h,
            ),
          ],
        ),
      ]),
    );
  }
}
