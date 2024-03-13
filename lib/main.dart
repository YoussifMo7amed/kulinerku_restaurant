import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/routing/app_router.dart';

import 'kulinerku_restaurant.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp( KulinerkuRestaurant(appRouter: AppRouter(),));
}
