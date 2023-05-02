import 'package:all_notes/app/core/app_padding.dart';
import 'package:flutter/material.dart';

class BottonColor extends StatelessWidget {
  final Color backgroundColor;

  const BottonColor({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.a10,
      child: Container(
        width: 27,
        height: 27,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
