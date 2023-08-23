import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final double height;
  final double radius;
  final double aspectRatio;
  final Widget? child;

  const CustomImageContainer({
    this.child,
    this.radius = 16.0,
    this.aspectRatio = 3 / 4,
    this.height = 224,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: const DecorationImage(
              image: AssetImage('assets/images/test.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
