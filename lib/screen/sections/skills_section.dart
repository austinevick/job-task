import 'package:flutter/material.dart';

import '../../constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = ['Fitting', 'Sewing', 'Measurement Taking', 'Amendment'];

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
                Image.asset('images/skills.png', height: 18),
                const SizedBox(width: 15),
                const Text(
                  'Skills',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2),
          const SizedBox(height: 10),
          Wrap(
              spacing: 20,
              children: skills
                  .map(
                    (e) => ChoiceChip(
                      side: const BorderSide(color: primaryColor, width: 1.2),
                      label: Text(e),
                      selectedColor: Colors.white,
                      onSelected: (value) {},
                      selected: true,
                    ),
                  )
                  .toList()),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
