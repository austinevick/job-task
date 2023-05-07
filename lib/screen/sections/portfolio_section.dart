import 'package:flutter/material.dart';
import 'package:flutter_test_app/widget/portfolio_card.dart';

import '../../constants.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: lightGrey),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('images/summary.png', height: 18),
                  const SizedBox(width: 15),
                  const Text(
                    'Job Portfolio',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  )
                ],
              ),
            ),
            const Divider(thickness: 1.2),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PortfolioCard(img: '2', text: 'Ankara Gown'),
                  PortfolioCard(img: '3', text: '3-Piece Suit'),
                  PortfolioCard(img: '4', text: 'Jumpsuit Dress'),
                ],
              ),
            )
          ],
        ));
  }
}
