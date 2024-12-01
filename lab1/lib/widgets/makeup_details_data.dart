import 'package:flutter/material.dart';

class MakeupDetailData extends StatelessWidget {
  final int id;
  final String details;
  final int price;

  const MakeupDetailData({
    super.key,
    required this.id,
    required this.details,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 2, color: Colors.grey)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Centers vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
        children: [
          const SizedBox(height: 10),
          Text(
            "Price: ${price.toString()}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, // Center text inside the widget
          ),
          const SizedBox(height: 10),
          Text(
            details,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center, // Center text inside the widget
          ),
        ],
      ),
    );
  }
}