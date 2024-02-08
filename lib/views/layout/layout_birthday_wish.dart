import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WishLayout extends StatelessWidget {
  WishLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset("images/paper.png"),
        Positioned(
          bottom: 27.h,
          top: 15.h,
          right: 0,
          left: 0,
          child: Center(
            child: Container(
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Text(
                  "Happy Birthday, my dear Shal! 🎉 Another year older, another adventure ahead. I just want you to know how much you mean to me and how grateful I am to have you in my life. On your special day, I wish you all the happiness in the world, because you deserve it. May your birthday be filled with laughter, love, and all your favorite things. And may the year ahead bring you even more joy and success.Thank you for being the amazing person that you are. Your kindness, humor, and friendship mean everything to me. Here's to celebrating you today and always! Happy Birthday! 🎂🥳 Let's make some great memories together! 🎈🎁",
                  style: TextStyle(color: Colors.black, fontSize: 13.sp),
                ).paddingSymmetric(horizontal: 30.w),
              ),
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
    );
  }
}
