import 'package:flutter/material.dart';

class WishLayout extends StatelessWidget {
  WishLayout({Key? key}) : super(key: key);

  List<String> MyText = [
    'It’s a smile from me… To wish you a day that brings the same kind '
        'of happiness and joy that you bring to me.',
    'I may not be by your side celebrating your special day with you, but '
        'I want you to know that I’m thinking of you',
    'I can’t believe how lucky I am to have found a friend like you. You make '
        'every day of my life so special. It’s my goal to make sure your '
        'birthday is one of the most special days ever. I can’t wait to '
        'celebrate with you!”',
    'A friend like you is more priceless than the most beautiful diamond. '
        'You are not only strong and wise, but kind and thoughtful as well. '
        'Your birthday is the perfect opportunity to show you how much I care '
        'and how grateful I am to have you in my life.',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Transform(
              transform: Matrix4.skew(0.03, -0.03),
              child: Container(
                height: MediaQuery.of(context).size.height * .66,
                width: MediaQuery.of(context).size.width * .76,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: 68,
            left: 40,
            child: Transform(
              transform: Matrix4.skew(0.03, -0.03),
              child: Container(
                height: MediaQuery.of(context).size.height * .66,
                width: MediaQuery.of(context).size.width * .76,
                decoration: BoxDecoration(
                  color: const Color(0xff13195b),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => Stack(
                      children: [
                        const Positioned(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Image(
                              height: 600,
                              width: 300,
                              image: AssetImage(
                                'images/paper.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 70,
                          top: 165,
                          child: Container(
                            height: 200,
                            width: 170,
                            child: SingleChildScrollView(
                              child: Text(
                                MyText[i],
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontFamily: 'Amellia',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    separatorBuilder: (context, i) => const IntrinsicHeight(
                      child: VerticalDivider(
                        thickness: 1,
                        indent: 150,
                        endIndent: 150,
                        color: Colors.white,
                      ),
                    ),
                    itemCount: MyText.length,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
