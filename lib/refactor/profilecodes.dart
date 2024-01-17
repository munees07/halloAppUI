import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halloui/refactor/codes.dart';

Container profillesubcard(
    Icon icon, String txt1, String txt2, String txt3, String txt4) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    width: 150,
    height: 125,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon, blacktext(txt1, 15)],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            blacktext(txt2, 18),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: blacktext(txt3, 15),
            )
          ],
        ),
        const SizedBox(height: 10),
        greytext(txt4)
      ],
    ),
  );
}

Drawer drawer() {
  var icons = [
    Icons.edit,
    Icons.subscriptions,
    Icons.attach_money,
    CupertinoIcons.gift,
    Icons.star,
    CupertinoIcons.question_circle,
    Icons.share,
    Icons.settings
  ];
  var titletxt = [
    'Edit profile',
    'Subscriptions',
    'Transaction History',
    'Refer a friend',
    'wishlist',
    'Help',
    'Share my profile',
    'Settings'
  ];
  return Drawer(
    width: 280,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: blacktext('Settings', 22),
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: titletxt.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(titletxt[index]),
                  leading: Icon(
                    icons[index],
                    color: Colors.black,
                  ),
                );
              }),
        ),
      ],
    ),
  );
}

Padding profilescroll(Icon mainicon, Icon? subicon, String maintxt,
    String subtxt, Color buttonbg, Color buttonfg, String buttontxt) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
    child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black26)),
        height: 180,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                mainicon,
                Positioned(right: 0, bottom: 0, child: subicon!),
              ],
            ),
            const SizedBox(height: 3),
            blacktext(maintxt, 14),
            const SizedBox(height: 10),
            Text(
              subtxt,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    foregroundColor: MaterialStatePropertyAll(buttonfg),
                    backgroundColor: MaterialStatePropertyAll(buttonbg)),
                onPressed: null,
                child: Text(buttontxt))
          ],
        )),
  );
}

TabBar profiletabbar() {
  return const TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
    Tab(
        icon: Icon(
      Icons.calendar_view_month_rounded,
      size: 30,
      color: Colors.black45,
    )),
    Tab(
        icon: Icon(
      Icons.bar_chart_rounded,
      size: 30,
      color: Colors.black45,
    )),
    Tab(
        icon: Icon(
      Icons.play_arrow_outlined,
      size: 30,
      color: Colors.black45,
    ))
  ]);
}
