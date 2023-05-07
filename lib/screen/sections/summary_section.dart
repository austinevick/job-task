import 'package:flutter/material.dart';

import '../../constants.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

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
                  'Summary',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing."),
          )
        ],
      ),
    );
  }
}
