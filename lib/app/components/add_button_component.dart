import 'package:flutter/material.dart';

class AddButtonComponent extends StatefulWidget {
  const AddButtonComponent({super.key});

  @override
  State<AddButtonComponent> createState() => _AddButtonComponentState();
}

class _AddButtonComponentState extends State<AddButtonComponent>
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
            color: Colors.blueAccent,
          ),
          child: const Icon(
            Icons.add,
            size: 50,
            color: Colors.white,
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
