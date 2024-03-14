import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/widgets/custom_appbar.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/cusom_search_bar.dart';
import '../widgets/video_review_item.dart';

class ReviewVideos extends StatelessWidget {
  const ReviewVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: "Video Review"),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(12.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const CustomSearchBar(),
                  verticalSpace(10.h),
                ],
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => const VideoReviewItem(),
            separatorBuilder: (context, index) => verticalSpace(10.h),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
