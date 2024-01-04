import 'package:birthday/controllers/controller.dart';
import 'package:birthday/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScreenInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BDController controller = Get.put(BDController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: BDWishColor.appColor.withOpacity(0.2),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: controller.formKey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Hanji! BirthDay Girl",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        // fontFamily: "Amellia",
                      ),
                    ).paddingOnly(top: 10.h, bottom: 1.h),
                    Text(
                      "Suchi Suchi dss",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        // fontFamily: "Amellia",
                      ),
                    ),
                    TextFormField(
                      controller: controller.nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Nam to likho";
                        } else if (value != "Shoniiii") {
                          return "No No No! Nick Name sahi likho to app chlygi";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter you Nick Name",
                        suffixIcon: Image.asset(
                          "images/cute kiss.png",
                          height: 8.sp,
                          width: 8.sp,
                        ).paddingOnly(right: 10.sp),
                        filled: true,
                        fillColor: BDWishColor.greyColor,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: BDWishColor.appColor),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ).paddingSymmetric(vertical: 3.h),
                    TextFormField(
                      controller: controller.ageController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Age to Likho";
                        }
                        int number = int.parse(value!);
                        if (number < 30 || number > 30) {
                          return "No No No ";
                        }
                        return null;
                        // return value == int.parse("30") ? null : "Na itni to ni hy";
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon: Image.asset(
                          "images/funnyFace.png",
                          height: 8.sp,
                          width: 8.sp,
                        ).paddingOnly(right: 10.sp),
                        hintText: "Enter you Real Age",
                        filled: true,
                        fillColor: BDWishColor.greyColor,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: BDWishColor.appColor),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {
                controller.validateEmail();
              },
              child: Text(
                "Start",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp),
              ).paddingSymmetric(
                horizontal: 18.sp,
                vertical: 10.sp,
              ),
            ).paddingOnly(bottom: 15.h)
          ],
        ).paddingSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
