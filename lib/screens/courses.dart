import 'package:flutter/material.dart';
import 'package:halloui/refactor/codes.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: blacktext('Courses', 22),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 2)),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white)),
                      onPressed: null,
                      child: const Text(
                          'All'), //style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  elevatedcourses('Career development', Colors.black, 8),
                  elevatedcourses('Dream jobs', Colors.black, 8),
                  elevatedcourses('Life style', Colors.black, 8),
                ],
              ),
              const SizedBox(height: 10),
              imagecard('lib/assets/images/CourseImage1.jpg'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    blacktext('How to be in the top 1% at work', 15),
                    greytext('B1-C2·8 lessons')
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: greytext(
                      'Learn how to become extraordinary and achieve more')),
              const SizedBox(height: 10),
              imagecard('lib/assets/images/CourseImage2.jpg'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    blacktext('Around the world ', 15),
                    greytext('A2-B2·8 lessons')
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: greytext(
                      'Learn the basics and take a trip around the world')),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
