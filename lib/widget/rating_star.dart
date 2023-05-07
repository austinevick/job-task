import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            5,
            (i) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('images/star.png', height: 12),
                )),
        const SizedBox(width: 4),
        const Text(
          '5.0',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
