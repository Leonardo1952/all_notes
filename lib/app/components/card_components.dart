import 'package:all_notes/app/core/app_padding.dart';
import 'package:all_notes/app/core/app_sizes.dart';
import 'package:all_notes/app/core/app_style.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String title;
  final String text;
  final Color backgroundColor;
  const CardComponent(
      {super.key,
      required this.title,
      required this.text,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.a10,
      child: Container(
        width: AppSizes.maxWidth,
        height: AppSizes.maxHeight,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: AppPadding.a10,
          child: Column(
            children: [
              Text(
                title,
                style: AppStyle.titleCard(),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
