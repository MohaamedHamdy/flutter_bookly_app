import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_image_container.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.only(bottom: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageContainer(
            height: 120,
            aspectRatio: 2.5 / 4,
            radius: 8,
          ),
          SizedBox(
            width: 20,
          ),
          BooksNameColumn(),
        ],
      ),
    );
  }
}

class BooksNameColumn extends StatelessWidget {
  const BooksNameColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle22,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'J.K.Rowling',
            style: Styles.textStyle16.copyWith(color: Colors.grey.shade400),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '19.99 \$',
                style: Styles.textStyle22.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const RatingWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    this.mainAxisAlignment = MainAxisAlignment.start,
    super.key,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromRGBO(255, 221, 79, 1),
          size: 16,
        ),
        Text(
          '  4.8',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          ' (2390)',
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
