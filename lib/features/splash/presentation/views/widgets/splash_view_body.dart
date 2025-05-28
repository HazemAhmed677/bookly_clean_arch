import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController1;
  late AnimationController animationController2;
  late Animation<double> sliderAnimation1;
  late Animation<Offset> sliderAnimation2;
  // to delete controller to prevent memroy leak
  @override
  void initState() {
    super.initState();
    initAnimationTools();

    /// avchive single responsibilty principle (oop design form)
    navigateToHomeView();
  }

  @override
  void dispose() {
    animationController1.dispose();
    animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          builder:
              (context, _) => FadeTransition(
                opacity: sliderAnimation1,
                child: Center(child: Image.asset(AssetsData.logo)),
              ),
          animation: sliderAnimation2,
        ),
        const SizedBox(height: 4),
        AnimatedBuilder(
          builder:
              (context, _) => SlideTransition(
                position: sliderAnimation2,
                child: const Text(
                  'Read free books',
                  style: TextStyle(fontSize: 16),
                ),
              ),
          animation: sliderAnimation1,
        ),
      ],
    );
  }

  void initAnimationTools() {
    animationController1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 950),
      // animationBehavior: AnimationBehavior.preserve,
    );
    sliderAnimation1 = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController1);
    animationController1.forward();

    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 950),
    );
    sliderAnimation2 = Tween<Offset>(
      begin: const Offset(0, 7),
      end: Offset.zero,
    ).animate(animationController2);
    animationController2.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/homeView');
    });
  }
}
