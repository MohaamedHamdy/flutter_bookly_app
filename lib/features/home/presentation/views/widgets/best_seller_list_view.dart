import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 24, right: 47),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRouter.kBookDetails);
            },
            child: const BestSellerItem()),
      ),
    );
  }
}
