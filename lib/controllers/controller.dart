import 'package:birthday/helpers/constants.dart';
import 'package:birthday/views/screens/screen_home.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BDController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  final formKey = new GlobalKey<FormState>();

  void validateEmail() async {
    final FormState? form = formKey.currentState;
    if (form!.validate()) {
      Get.snackbar(
        snackPosition: SnackPosition.BOTTOM,
        "Shabash",
        "ye sahi btaya hy",
        titleText: Row(
          children: [
            Text(
              "Shabash",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ).paddingOnly(right: 10.sp),
            Image.asset(
              "images/funnyFace.png",
              height: 30.sp,
            ),
          ],
        ),
        messageText: Text(
          "ye sahi btaya hy",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
        // backgroundColor: BDWishColor.appColor,
      );
      await Future.delayed(Duration(seconds: 3));
      Get.to(HomeScreen());
    } else {
      Get.snackbar(
        "Chal Jhuti",
        "Theek Theek Likho",
        titleText: Row(
          children: [
            Text(
              "Chal Jhuti",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ).paddingOnly(right: 10.sp),
            Image.asset(
              "images/funnyFace.png",
              height: 30.sp,
            ),
          ],
        ),
        messageText: Text(
          "Theek Theek Likho",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
        // backgroundColor: BDWishColor.appColor,
      );
    }
  }
}
