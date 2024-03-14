import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class GoodsItem extends StatelessWidget {
  const GoodsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding:  EdgeInsets.symmetric(horizontal:16.w,vertical: 10.h),
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("assets/images/good1.png")),
                    horizontalSpace(10.w),
                    Column(
                      children: [
                        Text(
                          "Rice",
                          style: TextStyles.font16LightBlackSemiBold,
                        ),
                        Text(
                          "Order must be in ton",
                          style: TextStyles.font13lightblackRegular,
                        ),
                      ],
                    )
                  ]),
                  verticalSpace(10.h),
                  Mydivider(),
                ],
              ),
            ) ;
  }
}