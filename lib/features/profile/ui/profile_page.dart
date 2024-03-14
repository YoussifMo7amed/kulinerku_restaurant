import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku_restaurant/core/helper/extentions.dart';
import 'package:kulinerku_restaurant/core/routing/routers.dart';
import 'package:kulinerku_restaurant/core/theming/colors.dart';
import '../../../../core/helper/spacing.dart';
import '../../../core/widgets/custom_gesture_detector.dart';
import 'widgets/custom_text_and_userinfo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomTextAndUserInfo(),
            verticalSpace(20.h),
            Container(
              width: double.infinity,
              height: 1,
              color: ColorsManager.lightBlack,
            ),
            verticalSpace(20.h),
            CustomGestureDetector(
              icon:const Icon(Icons.edit,color: ColorsManager.maindeeporange,),
             
              onTap: () {
                context.pushNamed(Routes.editProfile);
              },
              text: "Edit Profile",
            ),
            verticalSpace(20.h),
            CustomGestureDetector(
              icon:const Icon( Icons.video_collection_rounded,color: Colors.blue,),
              onTap: () {
                context.pushNamed(Routes.reviewvideos);
              },
              text: "Video Review",
            ),
            verticalSpace(20.h),
            CustomGestureDetector(
              icon: SvgPicture.asset("assets/svgs/menu.svg",),
              onTap: () {
                context.pushNamed(Routes.editmenu);
              },
              text: "Edit Menu",
            ),
            verticalSpace(20.h),
            CustomGestureDetector(
              icon:const Icon(Icons.logout,color: Colors.redAccent,),
              onTap: () {},
              text: "Log Out",
            ),
            verticalSpace(20.h),
          ]),
        ))
      ]),
    );
  }
}
