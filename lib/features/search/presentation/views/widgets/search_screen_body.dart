import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_bar.dart';
import 'search_list_view.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          SizedBox(height: 20.0,),
          Text(
            'Best Seller',
            style: Styles.textStyle20,
          ),
          SearchListView(),
        ],
      ),
    );
  }
}


