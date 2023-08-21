import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_router.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 20),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRouter.kBookDetails);
              },
              child: const BestSellerItem()),
        ),
      ),
    );
  }
}
