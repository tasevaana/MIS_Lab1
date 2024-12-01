import 'package:flutter/material.dart';
import 'package:lab1/model/Makeup_model.dart';
import 'package:lab1/widgets/makeup_card.dart';

class MakeupGrid extends StatefulWidget {
  final List<Makeup> makeup;
  const MakeupGrid({super.key, required this.makeup});
  @override
  _MangaGridState createState() => _MangaGridState();
}
class _MangaGridState extends State<MakeupGrid> {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.makeup.map((manga) =>
          MakeupCard(id: manga.id, name: manga.name, image: manga.img),
      ).toList(),
    );
  }
}