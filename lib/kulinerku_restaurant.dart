import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routers.dart';
import 'core/theming/colors.dart';

class KulinerkuRestaurant extends StatelessWidget {
  const KulinerkuRestaurant({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context

      child: MaterialApp(
        onGenerateRoute: appRouter.generateroutes,
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
        title: 'kulinerku app',
        // You can use the library anywhere in the app even in theme
        theme: ThemeData(
          primaryColor: ColorsManager.maindeeporange,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
