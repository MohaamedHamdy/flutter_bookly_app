import 'package:flutter/material.dart';
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
                Navigator.pushNamed(context, '/bookDetails');
              },
              child: const BestSellerItem()),
        ),
      ),
    );
  }
}
