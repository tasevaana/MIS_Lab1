import 'package:flutter/material.dart';
import 'package:lab1/model/Makeup_model.dart';
import 'package:lab1/widgets/makeup_card.dart';

class MakeupGrid extends StatefulWidget {
  final List<Makeup> makeup;
  const MakeupGrid({super.key, required this.makeup});
  @override
  _MakeupGridState createState() => _MakeupGridState();
}
class _MakeupGridState extends State<MakeupGrid> {
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
      children: widget.makeup.map((makeup) =>
          MakeupCard(id: makeup.id, name: makeup.name, image: makeup.img, details: makeup.details, price: makeup.price,),
      ).toList(),
    );
  }
}