import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/rating_star.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

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
                  Image.asset('images/star-blue.png', height: 18),
                  const SizedBox(width: 15),
                  const Text(
                    'Ratings and Reviews (8)',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => {},
                    child: const Text(
                      'See More',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
            const Divider(thickness: 1.2),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 20, top: 4, left: 20, right: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'images/p1.png',
                      )),
                  const SizedBox(width: 8),
                  Column(
                    children: const [
                      Text(
                        'Allen Daniels',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      RatingStar(),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text('17 Hours Ago'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20, top: 4, left: 20, right: 20),
              child: Text(
                  "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing."),
            ),
            const Divider(thickness: 1.2),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: CustomButton(
                radius: 10,
                textColor: primaryColor,
                text: 'Write a Review',
                borderSide: BorderSide(color: primaryColor),
              ),
            )
          ],
        ));
  }
}
