import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import 'package:halloui/refactor/codes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Color color = Colors.black26;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CountryFlag.fromLanguageCode(
                        'en-US',
                        height: 30,
                        width: 30,
                        borderRadius: 8,
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                              style: const ButtonStyle(
                                iconColor:
                                    MaterialStatePropertyAll(Colors.grey),
                              ),
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.flame_fill),
                              label: const Text(
                                '0',
                                style: TextStyle(color: Colors.grey),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.messenger_outline_rounded)),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  //topcard
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    color: const Color.fromARGB(255, 239, 238, 230),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 175,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 40),
                              color: const Color.fromARGB(255, 239, 238, 230),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                      'Refer a friend and earn 60\nminutes',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TextButton.icon(
                                    onPressed: null,
                                    label: const Text('Invite Friends'),
                                    icon: const Icon(Icons.arrow_forward),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: ClipPath(
                                clipper: _Shape(),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 22, 43, 91),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  child: Center(
                                    child: Image.asset(
                                        'lib/assets/images/gift.png',
                                        height: 70),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ) //topcard
                ,
                const SizedBox(height: 15), //sidescroll
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
                ]) //sidescroll
                ,
                const SizedBox(height: 10),
                homebottomCard(
                    Image.asset(
                      'lib/assets/images/instalesson.png',
                      height: 50,
                    ),
                    'InstaLesson',
                    '1 -on- 1 lessons with a native teacher',
                    'Paid'),
                homebottomCard(
                    Image.asset('lib/assets/images/instamatch.jpeg'),
                    'InstaMatch',
                    'Unlimited practice with other students',
                    'Free'),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                          onPressed: null,
                          icon: const Icon(Icons.filter_alt_outlined),
                          label: const Text('Filter')),
                      TextButton.icon(
                          onPressed: null,
                          icon: const Icon(Icons.list),
                          label: const Text('InstaLog'))
                    ],
                  ),
                ),
                filledIconButton('Start InstaMatch')
              ],
            ),
          ),
        ));
  }
}

class _Shape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(30, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) => false;
}
