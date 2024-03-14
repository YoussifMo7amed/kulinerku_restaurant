import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/helper/extentions.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
class CustomSuplierDetails extends StatelessWidget {
  const CustomSuplierDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         SizedBox(
              height: 210.h,
              child: Stack(
                children: [
                  SizedBox(
                    height: 250.h,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/image1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon:const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "PT.XYZ",
                            style: TextStyles.font18WhiteSemiBold
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            horizontalSpace(8.w),
                            Text(
                              "Jalan ABC no 1, Kelapa Gading, Jakarta\n081234567890",
                              style: TextStyles.font13lightblackRegular
                                  .copyWith(color: Colors.white),
                            ),
                            horizontalSpace(15.w),
                            AppTextButton(
                                horizontalPadding: 0,
                                verticalPadding: 0,
                                borderRadius: 10,
                                backgroundColor: ColorsManager.maindeeporange,
                                buttonHeight: 30.h,
                                buttonWidth: 90.w,
                                buttonText: "Direction",
                                textStyle: TextStyles.font18WhiteSemiBold
                                    .copyWith(fontSize: 14.0),
                                onPressed: () {}),
                            horizontalSpace(10.w),
                          ],
                        ),
                        verticalSpace(10.h)
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ]
    );
  }
}