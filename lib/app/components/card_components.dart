import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              Text(
                'Titulo',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
