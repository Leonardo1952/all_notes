import 'package:all_notes/app/core/app_colors.dart';
import 'package:all_notes/app/core/app_sizes.dart';
import 'package:flutter/material.dart';

class BottonButtonsComponent extends StatefulWidget {
  const BottonButtonsComponent({super.key});

  @override
  State<BottonButtonsComponent> createState() => _BottonButtonsComponentState();
}

class _BottonButtonsComponentState extends State<BottonButtonsComponent>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_controller.status == AnimationStatus.completed) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      },
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 0.125).animate(_controller),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.darkBlue,
          ),
          child: const Icon(
            Icons.add,
            size: AppSizes.iconPlus,
            color: AppColors.pureWhite,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
