import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halloui/refactor/codes.dart';
import 'package:country_flags/country_flags.dart';
import 'package:halloui/refactor/profilecodes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: blacktext('MUNEES', 22),
        actions: [
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.calendar_month_sharp,
                  color: Colors.black, size: 25)),
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.menu_rounded,
                      color: Colors.black, size: 30));
            },
          )
        ],
      ),
      endDrawer: drawer(),
      floatingActionButton: floatingbutton(),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset('lib/assets/images/prsn4.jpg'))),
                    const SizedBox(width: 40),
                    Column(
                      children: [blacktext('10', 20), greytext('Followers')],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [blacktext('20', 20), greytext('Following')],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [blacktext('B1', 20), greytext('Level')],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    blacktext('daily41', 17),
                    const SizedBox(
                      width: 10,
                    ),
                    CountryFlag.fromLanguageCode(
                      'ar-AE',
                      height: 20,
                      width: 30,
                      borderRadius: 5,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'United Arab Emirates',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: CountryFlag.fromLanguageCode(
                    'en-US',
                    height: 35,
                    width: 35,
                    borderRadius: 10,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      size: 24,
                      color: Colors.amber,
                    ),
                    blacktext('4.87(2)', 15)
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 243, 242, 239),
                  ),
                  width: double.infinity,
                  height: 280,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, top: 22, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            profillesubcard(const Icon(Icons.person), '1-on-1',
                                '0', '/0 min', 'Left this week'),
                            profillesubcard(const Icon(Icons.group), 'Group',
                                '0', '/0 classes', 'Left this week')
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          greytext('Resets weekly at 5:30 AM on Sunday'),
                          const Icon(Icons.warning_amber_rounded,
                              size: 18, color: Colors.black54)
                        ],
                      ),
                      const SizedBox(height: 20),
                      filledIconButton('Subscribe')
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                DecoratedBox(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.black12, width: 0.8))),
                  child: profiletabbar(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      blacktext('Upcoming 0 classes', 14),
                      const SizedBox(height: 20),
                      blacktext('Complete your profile', 14),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            '2 OF 4',
                            style: TextStyle(color: Colors.orange),
                          ),
                          greytext(' COMPLETED')
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      profilescroll(
                          const Icon(
                            CupertinoIcons.person,
                            size: 40,
                          ),
                          const Icon(null),
                          'Add Your Bio',
                          'Describe yourself to followers',
                          const Color.fromARGB(255, 102, 147, 244),
                          Colors.white,
                          'Add Bio'),
                      profilescroll(
                          const Icon(
                            Icons.interests_outlined,
                            size: 40,
                          ),
                          const Icon(null),
                          'Add Your Interests',
                          'Show Your Interests',
                          const Color.fromARGB(255, 102, 147, 244),
                          Colors.white,
                          'Add Interests'),
                      profilescroll(
                          const Icon(
                            CupertinoIcons.chart_bar_square,
                            size: 40,
                          ),
                          const Icon(CupertinoIcons.checkmark_alt_circle_fill,
                              color: Color.fromARGB(255, 69, 255, 12),
                              size: 18),
                          'AI Proficiency Test',
                          'Access Your Current Level',
                          Colors.black12,
                          Colors.black,
                          'Take Test'),
                      profilescroll(
                          const Icon(
                            CupertinoIcons.person_2,
                            size: 40,
                          ),
                          const Icon(CupertinoIcons.checkmark_alt_circle_fill,
                              color: Color.fromARGB(255, 69, 255, 12),
                              size: 18),
                          'Follow 5 Poeple',
                          'Connect With Poeple',
                          Colors.black12,
                          Colors.black,
                          'Find Teachers')
                    ],
                  ),
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
