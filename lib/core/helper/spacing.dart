import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

SizedBox verticalSpace(double height) => SizedBox(
      height: height.h,
    );

SizedBox horizontalSpace(double width,{Widget? child}) => SizedBox(
      width: width.w,
      child: child,
    );
    Widget Mydivider()=> horizontalSpace(double.infinity.h,child: Container(color: ColorsManager.lightGray, height: 1.h,));
          