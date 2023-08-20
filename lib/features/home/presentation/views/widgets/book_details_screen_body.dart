import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'custom_details_app_bar.dart';
import 'free_preview_button.dart';
import 'you_can_also_like_list_view.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDetailsAppBar(),
        const Padding(
          padding: EdgeInsets.only(top: 34.0, bottom: 40.0),
          child: CustomImageContainer(
            height: 260,
            aspectRatio: 2.6 / 4,
          ),
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle22.copyWith(fontSize: 30),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Lipling',
          style: Styles.textStyle20.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        const RatingWidget(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(
          height: 37,
        ),
        const FreePreviewButton(),
        const SizedBox(
          height: 50,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child:
             Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 16),
              child: Text(
                'You can also like',
                style: Styles.textStyle16,
              ),
            ),

        ),
        const YouCanAlsoLikeListView(),
      ],
    );
  }
}




