import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WishLayout extends StatelessWidget {
  WishLayout({Key? key}) : super(key: key);

  List<String> bdWish = [
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
    '𝐴𝑙𝑙𝑎𝒉 𝐵𝑙𝑒𝑠𝑠 𝑌𝑜𝑢 𝐺𝑖𝑣𝑒 𝑀𝑜𝑟𝑒 𝐻𝑎𝑝𝑝𝑖𝑛𝑒𝑠𝑠 𝐴𝑛𝑑 𝑆𝑢𝑐𝑐𝑒𝑠𝑠 𝑀𝑎𝑦 𝑌𝑜𝑢𝑟 𝐴𝑙𝑙 𝑊𝑖𝑠𝒉𝑒𝑠 𝐴𝑛𝑑 𝐷𝑟𝑒𝑎𝑚𝑠 𝐶𝑜𝑚𝑒 𝑇𝑟𝑢𝑒 𝑖𝑛 𝑌𝑜𝑢𝑟 𝑙𝑖𝑓𝑒❤✨𝑆𝑡𝑎𝑦 𝐵𝑙𝑒𝑠𝑠𝑒𝑑 𝐴𝑛𝑑 𝐸𝑛𝑗𝑜𝑦 𝑌𝑜𝑢𝑟 𝐷𝑎𝑦 𝑇𝑜 𝑇𝒉𝑒 𝐹𝑢𝑙𝑙𝑒𝑠𝑡 " 🎊😍🌹🌹ℍ𝕒𝕡𝕡𝕪 𝔹𝕚𝕣𝕥𝕙𝕕𝕒𝕪🌹🌹Dear.... Sana 🥰',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: bdWish.length,
      itemBuilder: (context, index) => Stack(
        children: [
          Image.asset("images/paper.png"),
          Positioned(
            bottom: 10.h,
            top: 0,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                // color: Colors.red,
                child: Text(
                  bdWish[index],
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                ).paddingSymmetric(horizontal: 30.w),
              ),
            ),
          )
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   bottom: 0,
          //   left: 0,
          //   child: Text(
          //     bdWish[index],
          //   ),
          // )
        ],
      ),
    );
    //   SizedBox(
    //   height: screenHeight,
    //   width: screenWidth,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       Positioned(
    //         child: Transform(
    //           transform: Matrix4.skew(0.03, -0.03),
    //           child: Container(
    //             height: MediaQuery.of(context).size.height * .66,
    //             width: MediaQuery.of(context).size.width * .76,
    //             decoration: BoxDecoration(
    //               color: Colors.grey.shade600,
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         top: 68,
    //         left: 40,
    //         child: Transform(
    //           transform: Matrix4.skew(0.03, -0.03),
    //           child: Container(
    //             height: MediaQuery.of(context).size.height * .66,
    //             width: MediaQuery.of(context).size.width * .76,
    //             decoration: BoxDecoration(
    //               color: const Color(0xff13195b),
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: Center(
    //               child: ListView.separated(
    //                 scrollDirection: Axis.horizontal,
    //                 itemBuilder: (context, i) => Stack(
    //                   children: [
    //                     const Positioned(
    //                       child: Padding(
    //                         padding: EdgeInsets.only(left: 10.0),
    //                         child: Image(
    //                           height: 600,
    //                           width: 300,
    //                           image: AssetImage(
    //                             'images/paper.png',
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       left: 70,
    //                       top: 165,
    //                       child: Container(
    //                         height: 200,
    //                         width: 170,
    //                         child: SingleChildScrollView(
    //                           child: Text(
    //                             MyText[i],
    //                             textAlign: TextAlign.justify,
    //                             style: const TextStyle(
    //                               fontFamily: 'Amellia',
    //                               fontSize: 20,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 separatorBuilder: (context, i) => const IntrinsicHeight(
    //                   child: VerticalDivider(
    //                     thickness: 1,
    //                     indent: 150,
    //                     endIndent: 150,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //                 itemCount: MyText.length,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
