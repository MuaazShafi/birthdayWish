import 'package:birthday/controllers/home_controller.dart';
import 'package:birthday/helpers/constants.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight* 0.28),
              child: Container(
                height: screenHeight,
                width: screenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.4,
                    image: AssetImage(
                      'images/bd (8).jpg',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.28),
              child: Container(
                height: screenHeight,
                width: screenWidth,
                color: Colors.black.withOpacity(0.1),
              ),
            ),
            Column(
              children: [
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: screenHeight * 0.35,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/abc.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Align(
                //     alignment: Alignment.topLeft,
                //     child: Text(
                //       "Happy\nBirthday\nShoniii", // "$_start",
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         fontWeight: FontWeight.w900,
                //         fontSize: size.width * 0.09,
                //         color: Colors.white.withOpacity(0.2),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: screenWidth * 0.6,
                  width: screenWidth * 0.6,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: SizedBox(
                          width: screenWidth * 0.4,
                          height: screenWidth * 0.4,
                          child: Obx(() {
                            return CircularProgressIndicator.adaptive(
                              strokeWidth: 10,
                              backgroundColor: Colors.grey.shade800,
                              valueColor: AlwaysStoppedAnimation(
                                BDWishColor.appColor,
                              ),
                              value: controller.progress / controller.age.value,
                            );
                          }),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Obx(() {
                          return Text(
                            "${controller.progress}",
                            style: TextStyle(
                              color: BDWishColor.appColor,
                              fontSize: screenWidth * 0.15,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ).paddingOnly(top: 20.h),
              ],
            ),
            ConfettiWidget(
              confettiController: controller.controllerConfetti,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              emissionFrequency: 0.3,
              colors: const [
                Colors.red,
                Colors.green,
                Colors.purple,
                Colors.blue,
                Colors.yellow,
              ],
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * .08,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: BDWishColor.appColor,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {

            controller.startTimer();
            controller.progress.value = 0;
            controller.controllerConfetti.play();
          },
          backgroundColor: const Color(0xff13195b),
          child: const Icon(
            Icons.play_circle_outline,
            size: 40,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }


}
