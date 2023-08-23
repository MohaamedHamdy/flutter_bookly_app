import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'animated_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.Logo),
        const SizedBox(
          height: 4.0,
        ),
        AnimatedText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      // Get.to(
      //       () => const HomeScreen(),
      //   transition: Transition.fade,
      //   duration: transitionDuration,
      Navigator.pushNamed(context, '/home');
    });
  }
}
