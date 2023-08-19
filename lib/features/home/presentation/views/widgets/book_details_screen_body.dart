import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDetailsAppBar(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 34.0, bottom: 40.0),
            child: CustomImageContainer(
              height: 260,
              aspectRatio: 2.6 / 4,
            ),
          ),
        ),
        Center(
          child: Text(
            'The Jungle Book',
            style: Styles.textStyle22.copyWith(fontSize: 30),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Center(
          child: Text(
            'Rudyard Lipling',
            style: Styles.textStyle20.copyWith(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        RatingWidget(),
        SizedBox(
          height: 37,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                ),
              ),
              child: Center(
                  child: Text(
                '19.99\$',
                style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              )),
            ),
            Container(
              height: 48,
              width: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(239, 130, 98, 1),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20.0),
                ),
              ),
              child: Center(
                  child: Text(
                'Free preview',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0, bottom: 16),
          child: Text(
            'You can also like',
            style: Styles.textStyle16,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CustomImageContainer(
                    aspectRatio: 0.66,
                    height: 112,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 44),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.x),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
