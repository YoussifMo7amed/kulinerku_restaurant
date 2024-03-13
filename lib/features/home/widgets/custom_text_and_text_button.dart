import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/helper/extentions.dart';
import 'package:kulinerku_restaurant/core/routing/routers.dart';
import 'package:kulinerku_restaurant/core/theming/styles.dart';
import 'package:kulinerku_restaurant/core/widgets/app_text_button.dart';
class CustomTextAndTextButtom extends StatelessWidget {
  final String text;
  final String buttomText;
  final String routeName;
  const CustomTextAndTextButtom({super.key, required this.text, required this.buttomText, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Text(
              text,
              style: TextStyles.font24LightBlackBold,
            ),
            const Spacer(),
            AppTextButton(
                backgroundColor: Colors.white,
                buttonHeight: 50.h,
                buttonWidth: 80.w,
                buttonText: buttomText,
                textStyle: TextStyles.font12DeepOrangeBold,
                onPressed: () {
                  context.pushNamed(routeName);
                })
          ],
        );
  }
}