import 'package:all_notes/app/core/app_colors.dart';
import 'package:all_notes/app/core/app_padding.dart';
import 'package:flutter/material.dart';

class NewNote extends StatelessWidget {
  final Color backgroundColor;
  const NewNote({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pureWhite.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: AppPadding.a10,
            child: Column(
              children: const [
                TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(labelText: 'Titulo...'),
                ),
                TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(labelText: 'Anotação...'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
