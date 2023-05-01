import 'package:all_notes/app/components/add_button_component.dart';
import 'package:all_notes/app/components/card_components.dart';
import 'package:all_notes/app/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                children: const [
                  CardComponent(
                    title: 'Card de exemplo',
                    text:
                        'fdgbnfibgifdi  hfdighdfgbfd  fdohgiofdso sdhfgiofdg fdg dh dsj shdih',
                    backgroundColor: AppColors.orangePastel,
                  ),
                  AddButtonComponent()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
