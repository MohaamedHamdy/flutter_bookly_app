import 'package:flutter/material.dart';

import 'widgets/search_screen_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const SafeArea(child: SearchScreenBody()),
    );
  }
}
