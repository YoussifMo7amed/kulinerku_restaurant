import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/theming/colors.dart';
import 'package:kulinerku_restaurant/core/theming/styles.dart';
import 'package:kulinerku_restaurant/features/home/widgets/custom_text_and_text_button.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/routers.dart';
import 'custom_rating_widget.dart';

class RestaurantRating extends StatelessWidget {
  final bool details;
  const RestaurantRating({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.dm,
      ),
      child: Column(children: [
        details
            ? const CustomTextAndTextButtom(
                text: "Restaurant Rating",
                buttomText: "view more",
                routeName: Routes.reviewScreen,
              )
            : const SizedBox(),
        verticalSpace(10.h),
        Row(children: [
          Column(
            children: [
              Text(
                "5.0",
                style: TextStyles.font36deepOrangeMedium,
              ),
              Text(
                "2 Reviews",
                style: TextStyles.font13lightblackRegular,
              ),
            ],
          ),
          horizontalSpace(30.w),
          const Column(children: [
            CustomRatingWidget(
              text: "5.0",
              color: Colors.blue,
            ),
            CustomRatingWidget(
              text: "4.0",
              color: ColorsManager.bluegray,
            ),
            CustomRatingWidget(
              text: "3.0",
              color: ColorsManager.bluegray,
            ),
            CustomRatingWidget(
              text: "2.0",
              color: ColorsManager.bluegray,
            ),
            CustomRatingWidget(
              text: "1.0",
              color: ColorsManager.bluegray,
            ),
          ])
        ])
      ]),
    );
  }
}
