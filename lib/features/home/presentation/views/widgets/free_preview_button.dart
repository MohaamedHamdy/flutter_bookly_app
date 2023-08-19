import 'package:bookly/core/utils/styles.dart';
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
    );
  }
}