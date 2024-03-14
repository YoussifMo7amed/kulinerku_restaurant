import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/widgets/cusom_search_bar.dart';
import 'package:kulinerku_restaurant/features/supliers/ui/widgets/custom_image_and_text.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';

class SupliersPage extends StatelessWidget {
  const SupliersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Supliers",
                style: TextStyles.font32LightBlackBold,
              ),
              verticalSpace(10.h),
              const CustomSearchBar(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const ImageandText();
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
