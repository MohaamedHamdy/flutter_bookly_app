import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final dynamic func;
  final Color color;
  final BorderRadius borderRadius;
  final Widget child;

  const CustomButton({
    Key? key,
    this.width = 48,
    this.height = 150,
    this.func,
    this.color = Colors.white,
    this.borderRadius = BorderRadius.zero,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
      width: height,
      child: TextButton(
        onPressed: func,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: child,
      ),
    );
  }
}
