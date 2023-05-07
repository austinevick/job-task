import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widget/custom_button.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
                Image.asset('images/work.png', height: 18),
                const SizedBox(width: 15),
                const Text(
                  'Work Experience',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CustomButton(
                  text: 'S',
                  color: lightBlue.withOpacity(0.8),
                  width: 50,
                  height: 50,
                  textColor: primaryColor,
                  textSize: 22,
                  radius: 8,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('CEO/ Founder', style: styleThickBlue),
                    Text(
                      'Samdom Fashion House',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'June 2018- Present',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CustomButton(
                  text: 'M',
                  color: lightBlue.withOpacity(0.8),
                  width: 50,
                  height: 50,
                  textColor: primaryColor,
                  textSize: 22,
                  radius: 8,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Tailoring Apprentice', style: styleThickBlue),
                    Text(
                      'Maydan Tailoring House',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'June 2011- May 2018',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
