import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../widgets/custom_home_appbar.dart';
import '../widgets/restaurant_rating.dart';
import '../widgets/text_title_and_dashboard.dart';
import '../widgets/videos_review.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const TextTitleAndDashBoard(),
          verticalSpace(10.h),
          const RestaurantRating(
            details: true,
          ),
          const VideosReview(),
        ]),
      ),
    );
  }
}
