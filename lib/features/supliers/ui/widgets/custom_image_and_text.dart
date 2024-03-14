import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/helper/extentions.dart';
import 'package:kulinerku_restaurant/core/routing/routers.dart';
import 'package:kulinerku_restaurant/core/theming/styles.dart';
import '../../../../core/helper/spacing.dart';

class ImageandText extends StatelessWidget {
  const ImageandText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
               context.pushNamed(Routes.supliersScreen);
            },
            child: SizedBox(
              height: 200,
              width: 350,
              child: Image.asset("assets/images/image1.png"),
            ),
          ),
          verticalSpace(10.h),
          Text("PT.XYZ", style: TextStyles.font20LightBlackSemiBold),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Jalan ABC no 1, Kelapa Gading, Jakarta",
                  style: TextStyles.font13lightblackRegular,
                ),
                Expanded(
                  child: SizedBox(
                    width: 20.w,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                )
              ],
            ),
          ),
          Text("081234567890", style: TextStyles.font13lightblackRegular),
          verticalSpace(20.h)
        ],
      ),
    );
  }
}
