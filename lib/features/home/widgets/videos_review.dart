import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/features/home/widgets/custom_text_and_text_button.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/routing/routers.dart';

class VideosReview extends StatelessWidget {
  const VideosReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.dm,
      ),
      child: Column(children: [
        const CustomTextAndTextButtom(
          text: "Videos",
          buttomText: "view more",
          routeName: Routes.videoScreen,
        ),
        SizedBox(
          width: double.infinity,
          height: 160.h,
          child: ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 200.w,
                  child: Image.asset("assets/images/video_image.png"),
                );
              },
              separatorBuilder: (context, index) => horizontalSpace(10.h),
              itemCount: 10),
        )
      ]),
    );
  }
}
