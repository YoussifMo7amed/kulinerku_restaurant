import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/helper/spacing.dart';
import 'package:kulinerku_restaurant/core/widgets/custom_appbar.dart';
import 'package:kulinerku_restaurant/features/home/widgets/custom_review_widget.dart';
import 'package:kulinerku_restaurant/features/home/widgets/restaurant_rating.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: "Reviews"),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const RestaurantRating(details: false),
                  verticalSpace(20.h),
                ],
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
              child: const CustomReview(),
            ),
            separatorBuilder: (context, index) => verticalSpace(10.h),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
