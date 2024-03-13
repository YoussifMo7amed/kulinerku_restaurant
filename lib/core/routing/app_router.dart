import 'package:flutter/material.dart';
import 'package:kulinerku_restaurant/features/home/screens/review_screen.dart';
import 'package:kulinerku_restaurant/features/home/home_page.dart';

import '../../features/home/screens/video_screen.dart';
import '../../features/onboarding/ui/onboarding.dart';
import 'routers.dart';

class AppRouter {
  Route generateroutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoarding(),
        );
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
        case Routes.homescreen:
        return MaterialPageRoute(
          builder: (_) =>const HomeScreen(),
        );
         case Routes.reviewScreen:
        return MaterialPageRoute(
          builder: (_) =>const ReviewPage(),
        );
        case Routes.videoScreen:
        return MaterialPageRoute(
          builder: (_) =>const VideoScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route Defined For $settings.name")),
          ),
        );
    }
  }
}
