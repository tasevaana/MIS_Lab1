import 'package:flutter/material.dart';
import 'package:lab1/model/Makeup_model.dart';
import 'package:lab1/widgets/makeup_card_data.dart';

class MakeupCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;

  const MakeupCard({super.key, required this.id, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Makeup(id: id, name: name, img: image))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 3),
              borderRadius: BorderRadius.circular(10)
          ),
          child: MakeupCardData(image: image, name: name),
        ),
      ),
    );
  }
}