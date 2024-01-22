import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/widgets/custom_button.dart';

class IntroScreen extends StatefulWidget {
  final PageController controller;
  const IntroScreen({required this.controller, super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    // Define the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Define the animation to move the image from center to top
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, -0.02),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    Future.delayed(
      const Duration(seconds: 1),
      () => _controller.forward(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _offsetAnimation,
                child: SizedBox(
                  width: 100.w,
                  height: 62.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/zimba_pos_img.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ).animate().fadeIn(duration: const Duration(seconds: 1)),
              ),
              SizedBox(height: 5.h),
              SlideTransition(
                position: _offsetAnimation,
                child: SizedBox(
                  width: 80.w,
                  child: Text(
                    'a single-stop solution that streamlines your billing process and enhances overall efficiency.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ).animate(delay: const Duration(seconds: 1)).fadeIn(),
                ),
              ),
              SizedBox(height: 10.h),
              CustomButton(
                text: "Get started",
                onPressed: () => widget.controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                ),
              ).animate(delay: const Duration(seconds: 2)).fadeIn(),
              // ElevatedButton(
              //   onPressed: () => widget.controller.nextPage(
              //     duration: const Duration(milliseconds: 300),
              //     curve: Curves.easeIn,
              //   ),
              //   child: const Text('Get Started'),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
