import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/theming/colors.dart';
import 'package:kulinerku_restaurant/core/widgets/custom_appbar.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_show_dialog.dart';
import '../../../../core/widgets/app_text_button.dart';

class EdtiMenu extends StatelessWidget {
  const EdtiMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: "Edit Menu"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            verticalSpace(10.h),
            Row(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/menuimage.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                horizontalSpace(10.w),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/menuimage.png",
                          ),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            verticalSpace(10.h),
            Row(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorsManager.maindeeporange, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        scale: 2.5,
                        image: AssetImage(
                          "assets/images/image-plus.png",
                        ),
                      )),
                ),
                horizontalSpace(10.w),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/menuimage.png",
                          ),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppTextButton(
                    buttonText: "Update Data",
                    textStyle: TextStyles.font14WhiteBold,
                    onPressed: () {
                      customshowDialog(context: context);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
