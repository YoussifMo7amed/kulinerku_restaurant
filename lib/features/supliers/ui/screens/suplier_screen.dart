import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku_restaurant/core/helper/spacing.dart';
import 'package:kulinerku_restaurant/core/theming/styles.dart';
import 'package:kulinerku_restaurant/core/widgets/cusom_search_bar.dart';
import 'package:kulinerku_restaurant/features/supliers/ui/widgets/custom_suplier_details.dart';
import 'package:kulinerku_restaurant/features/supliers/ui/widgets/item_of_goods.dart';

class SuplierScreen extends StatelessWidget {
  const SuplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSuplierDetails(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Text(
                "Goods",
                style: TextStyles.font24LightBlackBold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              child: const CustomSearchBar(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Mydivider(),
            ),
             ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const GoodsItem();
                  })
          ],
        ),
      ),
    );
  }
}
