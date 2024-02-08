import 'package:birthday/helpers/constants.dart';
import 'package:birthday/views/screens/screen_home.dart';
import 'package:birthday/views/screens/screen_info3.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../views/screens/screen_info2.dart';

class BDController extends GetxController {
  TextEditingController pehlaSawalController = TextEditingController();
  TextEditingController dosraSawalController = TextEditingController();
  TextEditingController LastSawalController = TextEditingController();
  final firstFormKey = new GlobalKey<FormState>();
  final secondFormKey = new GlobalKey<FormState>();
  final thirdFormKey = new GlobalKey<FormState>();

  void validatePehlaSawal() async {
    final FormState? form = firstFormKey.currentState;
    if (form!.validate()) {
      Get.snackbar(
        snackPosition: SnackPosition.BOTTOM,
        "Shabash",
        "Ab Next Btao",
        titleText: Image( height: 200,
          width: 200,
          image: AssetImage("images/yes.gif"),
        ),
        // Row(
        //   children: [
        //     Text(
        //       "Shabash",
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white,
        //       ),
        //     ).paddingOnly(right: 10.sp),
        //     Image.asset(
        //       "images/funnyFace.png",
        //       height: 30.sp,
        //     ),
        //   ],
        // ),
        // messageText: Text(
        //   "ye sahi btaya hy",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 14.sp,
        //   ),
        // ),
        // backgroundColor: BDWishColor.appColor,
      );
      await Future.delayed(Duration(seconds: 3));
      Get.to(ScreenInfo2());
    } else {
      Get.snackbar(
        "",
        "",
        titleText: Image(
          height: 200,
          width: 200,
          image: AssetImage("images/no.gif"),
        ),
        backgroundColor: Colors.transparent,
        // Row(
        //   children: [
        //     // Text(
        //     //   "",
        //     //   style:
        //     //       TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        //     // ).paddingOnly(right: 10.sp),
        //     Image.asset(
        //       "images/funnyFace.png",
        //       height: 30.sp,
        //     ),
        //   ],
        // ),
        // messageText: Text(
        //   "Theek Theek Likho",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 14.sp,
        //   ),
        // ),
        // backgroundColor: BDWishColor.appColor,
      );
    }
  }
  void validateDosraSawal() async {
    final FormState? form = secondFormKey.currentState;
    if (form!.validate()) {
      Get.snackbar(
        snackPosition: SnackPosition.BOTTOM,
        "Shabash",
        "Ab Next Btao",
        titleText: Image( height: 200,
          width: 200,
          image: AssetImage("images/yes.gif"),
        ),
        // Row(
        //   children: [
        //     Text(
        //       "Shabash",
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white,
        //       ),
        //     ).paddingOnly(right: 10.sp),
        //     Image.asset(
        //       "images/funnyFace.png",
        //       height: 30.sp,
        //     ),
        //   ],
        // ),
        // messageText: Text(
        //   "ye sahi btaya hy",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 14.sp,
        //   ),
        // ),
        // backgroundColor: BDWishColor.appColor,
      );
      await Future.delayed(Duration(seconds: 3));
      Get.to(ScreenInfo3());
    } else {
      Get.snackbar(
        "",
        "",
        titleText: Image(
          height: 200,
          width: 200,
          image: AssetImage("images/no.gif"),
        ),
        backgroundColor: Colors.transparent,
        // Row(
        //   children: [
        //     // Text(
        //     //   "",
        //     //   style:
        //     //       TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        //     // ).paddingOnly(right: 10.sp),
        //     Image.asset(
        //       "images/funnyFace.png",
        //       height: 30.sp,
        //     ),
        //   ],
        // ),
        // messageText: Text(
        //   "Theek Theek Likho",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 14.sp,
        //   ),
        // ),
        // backgroundColor: BDWishColor.appColor,
      );
    }
  }
  void validateLastSawal() async {
    final FormState? form = thirdFormKey.currentState;
    if (form!.validate()) {
      Get.snackbar(
        snackPosition: SnackPosition.BOTTOM,
        "",
        "",
        titleText: Image( height: 200,
          width: 200,
          image: AssetImage("images/yes.gif"),
        ),
        // Row(
        //   children: [
        //     Text(
        //       "Shabash",
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white,
        //       ),
        //     ).paddingOnly(right: 10.sp),
        //     Image.asset(
        //       "images/funnyFace.png",
        //       height: 30.sp,
        //     ),
        //   ],
        // ),
        // messageText: Text(
        //   "ye sahi btaya hy",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 14.sp,
        //   ),
        // ),
        // backgroundColor: BDWishColor.appColor,
      );
      await Future.delayed(Duration(seconds: 3));
      Get.to(HomeScreen());
    } else {
      Get.snackbar(
        "",
        "",
        titleText: Image(
          height: 200,
          width: 200,
          image: AssetImage("images/no.gif"),
        ),
        backgroundColor: Colors.transparent,
        // Row(
        //   children: [
        //     // Text(
        //     //   "",
        //     //   style:
        //     //       TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        //     // ).paddingOnly(right: 10.sp),
        //     Image.asset(
        //       "images/funnyFace.png",
        //       height: 30.sp,
        //     ),
        //   ],
        // ),
        // messageText: Text(
        //   "Theek Theek Likho",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 14.sp,
        //   ),
        // ),
        // backgroundColor: BDWishColor.appColor,
      );
    }
  }
}
