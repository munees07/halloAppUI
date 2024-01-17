import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ElevatedButton elevatedcourses(String txt, Color txtcolor, double radius) {
  return ElevatedButton(
    style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius))),
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 10))),
    onPressed: null,
    child: Text(txt, style: TextStyle(color: txtcolor, fontSize: 15)),
  );
}

Text blacktext(String txt, double? size) {
  return Text(
    txt,
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: size, color: Colors.black),
  );
}

Padding imagecard(String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: SizedBox(
      width: double.infinity,
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Text greytext(String txt) => Text(
      txt,
      style: const TextStyle(color: Colors.black54),
    );

Card homebottomCard(image, String txt1, String txt2, String txt3) {
  return Card(
    elevation: 0,
    color: Colors.white,
    child: SizedBox(
      height: 80,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          image,
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                txt1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                txt2,
                style: const TextStyle(color: Colors.black54),
              )
            ],
          ),
          const SizedBox(width: 25),
          Text(
            txt3,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}

FilledButton filledIconButton(String txt) {
  return FilledButton(
    onPressed: null,
    style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 100, vertical: 17)),
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(255, 102, 147, 244))),
    child: Text(
      txt,
      style: const TextStyle(color: Colors.white),
    ),
  );
}

Stack floatingbutton() {
  return Stack(alignment: Alignment.center, children: [
    const FloatingActionButton(
      elevation: 0,
      onPressed: null,
      backgroundColor: Colors.white,
      child: Icon(
        CupertinoIcons.flame_fill,
        color: Color.fromARGB(255, 255, 106, 0),
      ),
    ),
    CircularProgressIndicator(
      strokeWidth: 4,
      strokeAlign: 4,
      value: 0.03,
      backgroundColor: Colors.black12.withOpacity(0.08),
      valueColor:
          const AlwaysStoppedAnimation(Color.fromARGB(255, 255, 106, 0)),
    ),
    const Positioned(
      bottom: 0,
      left: 0,
      child: CircleAvatar(
        radius: 14,
        backgroundColor: Colors.black38,
        child: Text(
          '0',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    ),
  ]);
}

ElevatedButton elevatedexplore(String txt) {
  return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 15, vertical: 9))),
      onPressed: null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            txt,
            style: const TextStyle(color: Colors.black),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          )
        ],
      ));
}

Column sidescroll(List<dynamic> imagelist, List<String> txt) {
  return Column(
    children: [
      SizedBox(
        height: 110,
        child: ListView.builder(
            itemCount: imagelist.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: 75,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(imagelist[index]),
                      ),
                    ),
                  ),
                  blacktext(txt[index], 14)
                ],
              );
            }),
      )
    ],
  );
}

Padding teachercard(String imagepath, String countrycode, String name,
    String rating, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(radius: 32, backgroundImage: AssetImage(imagepath)),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            CountryFlag.fromLanguageCode(
                              countrycode,
                              height: 20,
                              width: 20,
                              borderRadius: 8,
                            ),
                            const SizedBox(width: 5),
                            blacktext(name, 15)
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                              size: 16,
                            ),
                            greytext(rating),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 210),
                      child: Icon(Icons.star_border_rounded),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black54),
                ),
              ))
        ],
      ),
    ),
  );
}
