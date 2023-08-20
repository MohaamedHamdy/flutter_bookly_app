import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/button.dart';
import 'package:flutter/material.dart';

class FreePreviewButton extends StatelessWidget {
  const FreePreviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CustomButton(
            func: () {},
            color: Colors.white,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20.0),
            ),
            child: Text(
              '19.99\$',
              style: Styles.textStyle20.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        Center(
          child: CustomButton(
            func: () {},
            color: const Color.fromRGBO(239, 130, 98, 1.0),
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(20.0),
            ),
            child: Text(
              'Free preview',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
