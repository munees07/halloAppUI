import 'package:flutter/material.dart';
import 'package:halloui/refactor/codes.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

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
          const SizedBox(height: 10),
          imagecard('lib/assets/images/exploreImage1.jpg'),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blacktext('Interview preparation', 15),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    greytext('4.16(6)'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, left: 10),
            child: greytext('Mon at 2:30 PM·Work·B1'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'lib/assets/images/prsn3.jpg',
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                    ),
                    const SizedBox(height: 5),
                    blacktext('John', 15)
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.black38,
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: Colors.black38,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          imagecard('lib/assets/images/exploreImage.jpg'),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blacktext('Getting the promotion', 15),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    greytext('4.25(6)'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, left: 10),
            child: greytext('Wed at 2:30 PM·Work·B1'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'lib/assets/images/prsn2.jpeg',
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                    ),
                    const SizedBox(height: 5),
                    blacktext('Steve', 15)
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.black38,
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: Colors.black38,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
