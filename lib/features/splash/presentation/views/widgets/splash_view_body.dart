import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/utils/styles.dart';
import 'package:meals_app/features/splash/presentation/views/widgets/sliding_text.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

/// dh aly bihandel al rate bta3 ta8aior al values
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
            .animate(animationController);
    animationController.forward();

    navigateToOtherPage();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/mealSplash.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),

          SlidingText(
              slidingAnimation: slidingAnimation,
              text: 'Free Meals',
              style: Styles.textStyle30),
          SlidingText(
              slidingAnimation: slidingAnimation,
              text: 'Choose your favorite meal',
              style: Styles.textStyle18.copyWith(color: Colors.green)),
        ],
      ),
    );
  }

  void navigateToOtherPage() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      },
    );
  }
}
