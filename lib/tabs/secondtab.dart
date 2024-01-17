import 'package:flutter/material.dart';
import 'package:halloui/refactor/codes.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              elevatedexplore('Time'),
              const SizedBox(width: 10),
              elevatedexplore('Level'),
              const SizedBox(width: 10),
              elevatedexplore('Topic')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: blacktext('New Teachers', 16),
          ),
          sidescroll([
            'lib/assets/images/prsn4.jpg',
            'lib/assets/images/prsn2.jpeg',
            'lib/assets/images/prsn3.jpg',
            'lib/assets/images/prsn4.jpg',
            'lib/assets/images/prsn2.jpeg',
            'lib/assets/images/prsn3.jpg',
          ], [
            'James',
            'Steve',
            'John',
            'James',
            'Steve',
            'John',
          ]),
          const SizedBox(height: 10),
          teachercard(
              'lib/assets/images/prsn2.jpeg',
              'en-US',
              'Steve',
              '4.16(6)',
              'I am an experienced business English teacher I have a background in financial services spanning 10 years.I make learning English fun and exciting'),
          const SizedBox(height: 10),
          teachercard('lib/assets/images/prsn3.jpg', 'en', 'John', '4.91(5)',
              'I am a professional English language trainer. I conduct live classes regularly on IELTS,pronunciation, and basic English.'),
          const SizedBox(height: 10),
          teachercard('lib/assets/images/prsn3.jpg', 'en-IE', 'luis', '4.82(8)',
              'I am a professional English language trainer. I conduct live classes regularly on IELTS,pronunciation, and basic English.')
        ],
      ),
    );
  }
}
