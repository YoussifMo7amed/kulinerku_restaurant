import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku_restaurant/core/helper/spacing.dart';
import 'package:kulinerku_restaurant/core/theming/colors.dart';
import 'package:kulinerku_restaurant/core/theming/styles.dart';
class CustomReview extends StatelessWidget {
  const CustomReview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Container(
              height: 135.h,
              padding: EdgeInsets.symmetric(vertical: 10.dg),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorsManager.lightBlack),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.dg),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svgs/person.svg"),
                        horizontalSpace(10.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wayan Sandra",
                              style: TextStyles.font16LightBlackBold,
                            ),
                            Text(
                              "10 Mar 2023",
                              style: TextStyles.font13lightblackRegular,
                            ),
                            verticalSpace(10.h),
                           
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                          width: 300.w,
                          child: Text(
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            "Tempatnya bagus! Banyak objek yang bisa dijadikan tempat untuk foto!",
                            style: TextStyles.font16lightblackRegular,
                          ),
                        ),
                  ],
                ),
              ),
            ),
      ]
    );
  }
}