import 'package:birthday/views/screens/screen_info1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OnBoardingController extends GetxController {
  final PageController pageController = PageController();
  final int numPages = ScreenOnBoarding.images.length;
  final RxInt currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void goToNextPage() {
    if (currentIndex.value == numPages - 1) {
      Get.off(ScreenInfo1());
    } else {
      pageController.nextPage(
        duration: Duration(milliseconds: 100),
        curve: Curves.bounceIn,
      );
    }
  }
}

class ScreenOnBoarding extends StatelessWidget {
  static const List<String> images = [
    "https://drive.google.com/uc?export=view&id=1yuuDBMxxs7cbvNI3lUxwbZ7csyGK8X8O",
    "https://drive.google.com/uc?export=view&id=1p1qMTgxZukuNfJLhOSMzrwMloFfd1shi",
    "https://drive.google.com/uc?export=view&id=1wBD-h7QXJw1-g7m-KXo6ZrS3G13Z5stF",
    "https://drive.google.com/uc?export=view&id=1-86AcSI1oQjaZ78rnezlmu5py9VkubhM",
  ];
  static const List<String> heading = [
    'Dhakkan',
    'Churail',
    'Shal',
    'Ab Idr click kro',
  ];

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = Get.put(OnBoardingController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: controller.pageController,
              itemCount: ScreenOnBoarding.images.length,
              onPageChanged: controller.onPageChanged,
              itemBuilder: (_, i) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.5,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        images[i],
                      ),
                    ),
                  ),
                  // color: _getPageColor(i),
                  child: Column(
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Container(
                            height: 28.h,
                            width: 28.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(images[i]),
                              ),
                            ),
                          ),
                        ),
                      ).paddingOnly(top: 43.h,bottom: 3.h),
                      GestureDetector(
                        onTap: () {
                          if (i == ScreenOnBoarding.heading.length - 1) {
                            Get.off(ScreenInfo1());
                          }
                        },
                        child: Text(
                          ScreenOnBoarding.heading[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffbd597a),
                            decoration: i == ScreenOnBoarding.heading.length - 1
                                ? TextDecoration.underline
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: screenHeight * 0.06,
              left: screenWidth * 0.43,
              child: Container(
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      ScreenOnBoarding.images.length,
                      (index) => buildDot(
                        index,
                        context,
                        controller.currentIndex.value == index,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Color _getPageColor(int index) {
  //   switch (index) {
  //     case 0:
  //       return Color(0xffbd597a);
  //     case 1:
  //       return Color(0xffbd597a);
  //     case 2:
  //       return Color(0xffbd597a);
  //     case 3:
  //       return Color(0xffbd597a);
  //     default:
  //       return Colors.transparent;
  //   }
  // }

  Container buildDot(int index, BuildContext context, bool isActive) {
    return Container(
      padding: EdgeInsets.all(1.sp),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.transparent : Color(0xffbd597a),
        border: Border.all(
          color: isActive ? Color(0xffbd597a) : Color(0xffbd597a),
          width: isActive ? 2 : 0.0,
        ),
      ),
      child: Center(
        child: Container(
          height: 4,
          width: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Color(0xffbd597a) : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
