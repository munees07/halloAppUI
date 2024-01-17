import 'package:flutter/material.dart';
import 'package:halloui/screens/courses.dart';
import 'package:halloui/screens/explore.dart';
import 'package:halloui/screens/home.dart';
import 'package:halloui/screens/profile.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List<Widget> pages = [
    const Home(),
    const Explore(),
    const Courses(),
    const Profile()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: onTap,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey.withOpacity(0.8),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Explore', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: 'Courses',
                icon: Icon(Icons.chrome_reader_mode_outlined),
                activeIcon: Icon(Icons.chrome_reader_mode)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
          ]),
    );
  }
}
