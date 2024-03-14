import 'package:flutter/material.dart';
import 'package:kulinerku_restaurant/features/home/screens/review_screen.dart';
import 'package:kulinerku_restaurant/features/home/home_page.dart';
import 'package:kulinerku_restaurant/features/profile/ui/screens/edut_menu_screen.dart';
import 'package:kulinerku_restaurant/features/profile/ui/screens/videos_review_screen.dart';
import 'package:kulinerku_restaurant/features/supliers/ui/screens/suplier_screen.dart';
import 'package:kulinerku_restaurant/features/supliers/ui/supliers_page.dart';

import '../../features/home/screens/video_screen.dart';
import '../../features/onboarding/ui/onboarding.dart';
import '../../features/profile/ui/screens/edit_profile_screen.dart';
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
         case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfile(),
        );
        case Routes.reviewvideos:
        return MaterialPageRoute(
          builder: (_) => const ReviewVideos(),
        );
         case Routes.editmenu:
        return MaterialPageRoute(
          builder: (_) => const EdtiMenu(),
        );
         case Routes.supliers:
        return MaterialPageRoute(
          builder: (_) => const SupliersPage(),
        );
         case Routes.supliersScreen:
        return MaterialPageRoute(
          builder: (_) => const SuplierScreen(),
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
