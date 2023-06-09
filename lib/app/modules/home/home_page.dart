import 'package:all_notes/app/components/botton_button_component.dart';
import 'package:all_notes/app/components/botton_color.dart';
import 'package:all_notes/app/components/card_components.dart';
import 'package:all_notes/app/core/app_colors.dart';
import 'package:all_notes/app/core/app_padding.dart';
import 'package:all_notes/app/widget/new_note.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCreate = false;
  Color backgroundCard = AppColors.greenPastel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                      CardComponent(
                        title: 'Card de exemplo',
                        text:
                            'fdgbnfibgifdi  hfdighdfgbfd  fdohgiofdso sdhfgiofdg fdg dh dsj shdih',
                        backgroundColor: AppColors.orangePastel,
                      ),
                      CardComponent(
                        title: 'Card de exemplo',
                        text:
                            'fdgbnfibgifdi  hfdighdfgbfd  fdohgiofdso sdhfgiofdg fdg dh dsj shdih',
                        backgroundColor: AppColors.orangePastel,
                      ),
                      CardComponent(
                        title: 'Card de exemplo',
                        text:
                            'fdgbnfibgifdi  hfdighdfgbfd  fdohgiofdso sdhfgiofdg fdg dh dsj shdih',
                        backgroundColor: AppColors.orangePastel,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Visibility(
              child: NewNote(
            backgroundColor: backgroundCard,
          )),
          Column(
            children: const [
              BottonColor(backgroundColor: AppColors.bluePastel),
              BottonColor(backgroundColor: AppColors.redPastel),
              BottonColor(backgroundColor: AppColors.orangePastel),
            ],
          ),
          const Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: AppPadding.a10,
              child: BottonButtonsComponent(),
            ),
          ),
        ],
      ),
    );
  }
}
