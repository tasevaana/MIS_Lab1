import 'package:flutter/material.dart';
import 'package:lab1/model/Makeup_model.dart';
import 'package:lab1/widgets/details_back.dart';
import 'package:lab1/widgets/makeup_details_data.dart';
import 'package:lab1/widgets/makeup_details_image.dart';
import 'package:lab1/widgets/makeup_details_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Makeup;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            MakeupDetailImage(image: arguments.img),
            MakeupDetailTitle(id: arguments.id, name: arguments.name),
            MakeupDetailData(id: arguments.id),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}