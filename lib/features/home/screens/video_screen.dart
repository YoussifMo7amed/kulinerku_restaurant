import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku_restaurant/core/widgets/custom_appbar.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/cusom_search_bar.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: "Videos"),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: const CustomSearchBar(),
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const VideoReview(),
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}

class VideoReview extends StatelessWidget {
  const VideoReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Image.asset("assets/images/youtubeimage.png"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
          child:  Row(
            children: [
              SvgPicture.asset(
                "assets/svgs/person.svg",
                height: 30.h,
              ),
              horizontalSpace(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Tempat Nongkrong Paling Hits!",style: TextStyles.font20LightBlackBold,),
                  Text("Reviewer A",style: TextStyles.font14LightBlackMedium, ),
                ]
              )
            ],
          ),
        )
      
    ]);
  }
}
