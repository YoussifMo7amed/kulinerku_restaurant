import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/theming/colors.dart';
import 'package:kulinerku_restaurant/core/widgets/app_show_dialog.dart';
import 'package:kulinerku_restaurant/core/widgets/app_text_button.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class VideoReviewItem extends StatelessWidget {
  const VideoReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
              SizedBox(
                height: 90.h,
                width: 150.w,
                child: Image.asset(
                  "assets/images/videoreview.png",
                ),
              ),
              horizontalSpace(10.w),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Tempat Nongkrong Paling Hits!",
                    style: TextStyles.font13lightblackBold),
                Text("Reviewer A", style: TextStyles.font13lightblackRegular),
                SizedBox(
                  width: 180.w,
                  child: Text(
                      maxLines: 2,
                      "Submitted at 2 June, 2023 10.10 AM",
                      style: TextStyles.font13lightblackRegular),
                ),
              ]),
            ]),
            verticalSpace(10.h),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              AppTextButton(
                backgroundColor: ColorsManager.darkgreen,
                buttonHeight: 40,
                buttonWidth: 180,
                verticalPadding: 0,
            
                buttonText: "Approve", textStyle: TextStyles.font16LightBlackSemiBold.copyWith(
                  color: Colors.white,
                ), onPressed: (){
                  customshowDialog(context: context);
                }),
          const Expanded(child: SizedBox()),
            AppTextButton(
                backgroundColor: Colors.redAccent,
                buttonHeight: 40,
                buttonWidth: 180,
                verticalPadding: 0,
                buttonText: "Reject", textStyle: TextStyles.font16LightBlackSemiBold.copyWith(
                  color: Colors.white,
                ), onPressed: (){}),
            ])
        ]
      ),
    );
  }
}