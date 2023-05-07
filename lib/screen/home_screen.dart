import 'package:flutter/material.dart';

import '../constants.dart';
import '../widget/contact_details.dart';
import '../widget/custom_button.dart';
import '../widget/rating_star.dart';
import 'sections/experience_section.dart';
import 'sections/portfolio_section.dart';
import 'sections/review_section.dart';
import 'sections/skills_section.dart';
import 'sections/summary_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_backspace, size: 34)),
                      const Spacer(),
                      const Text(
                        "View Profile",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      const Spacer(flex: 2)
                    ],
                  ),
                  const SizedBox(height: 25),
                  Stack(
                    children: const [
                      CircleAvatar(
                        radius: 65,
                        backgroundColor: lightBlue,
                        backgroundImage: AssetImage('images/p5.png'),
                      ),
                      Positioned(
                        right: 3,
                        bottom: 20,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xff008215),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Samuel Dominic',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Fashion Designer, Male',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  const RatingStar(),
                  const SizedBox(height: 25),
                  const ContactDetails(),
                  const SizedBox(height: 15),
                  CustomButton(
                    radius: 6,
                    height: 50,
                    onPressed: () {},
                    gradient: const [Color(0xff012466), primaryColor],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/send.png', height: 18),
                        const SizedBox(width: 6),
                        const Text(
                          'Send Message',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Divider(thickness: 1.2),
                  const SizedBox(height: 15),
                  Row(
                    children: const [
                      Text('Join Date: ', style: styleThickBlue),
                      Text('19th August, 2021')
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Completed Jobs: ', style: styleThickBlue),
                      Text('300')
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Last Seen: ', style: styleThickBlue),
                      Text('4 Hours Ago')
                    ],
                  ),
                  const SizedBox(height: 12),
                  Divider(thickness: 1.2, color: lightGrey),
                  const SizedBox(height: 15),
                  const SummarySection(),
                  const SizedBox(height: 25),
                  const ExperienceSection(),
                  const SizedBox(height: 25),
                  const SkillsSection(),
                  const SizedBox(height: 25),
                  const PortfolioSection(),
                  const SizedBox(height: 25),
                  const ReviewSection(),
                  const SizedBox(height: 30),
                ],
              ),
            )));
  }
}
