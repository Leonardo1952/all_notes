import 'package:all_notes/app/modules/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'All notes',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
