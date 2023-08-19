import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24, right: 47),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                Get.to(
                  () => const BookDetailsBody(),
                  transition: Transition.fade,
                  duration: transitionDuration,
                );
              },
              child: const BestSellerItem()),
        ),
      ),
    );
  }
}
