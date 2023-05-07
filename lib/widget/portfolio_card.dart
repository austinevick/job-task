import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final String img;
  final String text;
  const PortfolioCard({super.key, required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('images/p$img.png', height: 80)),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
