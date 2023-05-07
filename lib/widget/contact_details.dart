import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';
import 'custom_button.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const styleThickGrey = TextStyle(fontSize: 15, color: Colors.grey);
    return Column(
      children: [
        Row(
          children: const [
            Icon(Icons.place_outlined, color: primaryColor, size: 20),
            SizedBox(width: 6),
            Text('Lagos, Nigeria.', style: styleThickGrey),
            Spacer(),
            Icon(Icons.call_outlined, color: primaryColor, size: 20),
            SizedBox(width: 6),
            Text('+234 813 970 3721', style: styleThickGrey)
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: const [
            Icon(Icons.email_outlined, color: primaryColor, size: 20),
            SizedBox(width: 6),
            Text('samdee@gmail.com', style: styleThickGrey),
            Spacer(),
            SizedBox(width: 6),
            Text('Experience', style: styleThickGrey),
            SizedBox(width: 6),
            CustomButton(
              text: 'Expert',
              textColor: Colors.black,
              width: 65,
              textSize: 11,
              color: lightBlue,
              height: 20,
              radius: 6,
            )
          ],
        ),
      ],
    );
  }
}
