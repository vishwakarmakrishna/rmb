import 'package:flutter/material.dart';
import 'package:rmb/resources/resources.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: DurationConstant.d2000),
      vsync: this,
    );
    super.initState();
    _controller.forward().whenComplete(_goNext);
  }

  void _goNext() {
    context.pushReplacementNamed(RouterStrings.homePath);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _controller,
        child: Center(
          child: Hero(
            tag: AppStrings.appName,
            child: Assets.image.logo.image(
              width: AppSize.s190,
              height: AppSize.s190,
            ),
          ),
        ),
      ),
    );
  }
}
