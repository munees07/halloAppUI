import 'package:flutter/material.dart';
import 'package:halloui/refactor/codes.dart';
import 'package:halloui/tabs/firsttab.dart';
import 'package:halloui/tabs/secondtab.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const AppTextField(
              hintText: 'Search name',
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
                indicatorColor: const Color.fromARGB(255, 102, 147, 244),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: blacktext('Group', 17),
                  ),
                  Tab(
                    child: blacktext('1-on-1', 17),
                  )
                ]),
            const Expanded(
                child: TabBarView(children: [FirstTab(), SecondTab()]))
          ],
        ),
      ),
    ));
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              prefixIcon: const Icon(Icons.search),
              fillColor: const Color.fromARGB(255, 233, 233, 233),
              filled: true,
              hintText: hintText),
        ),
      ),
    );
  }
}
