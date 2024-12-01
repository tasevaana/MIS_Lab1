import 'package:flutter/material.dart';

class MakeupDetailTitle extends StatelessWidget {
  final int id;
  final String name;
  final String details;
  final int price;
  const MakeupDetailTitle({super.key, required this.id, required this.name, required this.details, required this.price});

  @override
  Widget build(BuildContext context) {
    return Chip(backgroundColor: Colors.white,
      label: Text("${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
      avatar: CircleAvatar(
        child: Text(id.toString()),
      ),
    );
  }
}