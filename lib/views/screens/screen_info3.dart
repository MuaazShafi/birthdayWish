import 'package:birthday/controllers/controller.dart';
import 'package:birthday/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScreenInfo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BDController controller = Get.put(BDController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: BDWishColor.appColor.withOpacity(0.2),
      backgroundColor: Color(0xffbd597a),
      body: SafeArea(
        child: Form(
          key: controller.thirdFormKey,
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://drive.google.com/uc?export=view&id=1wBD-h7QXJw1-g7m-KXo6ZrS3G13Z5stF",
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Great!\nChurail\nLast Sawal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    // fontFamily: "Amellia",
                  ),
                  textAlign: TextAlign.center,
                ).paddingOnly(top: 10.h, bottom: 1.h),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                  controller: controller.LastSawalController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "phr btana pry ga Kuch likho to sahi";
                    } else if (value == "shal") {
                      return "hd h wesy pehla letter capital hota h";
                    } else if (value != "Shal") {
                      return "Nooo";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontSize: 13.sp,
                    ),
                    hintText: "Tmhy sb sy zyada knsa nam psand h",
                    hintStyle: TextStyle(
                        color: Color(0xffbd597a)
                    ),
                    suffixIcon: Image.asset(
                      "images/cute kiss.png",
                      height: 8.sp,
                      width: 8.sp,
                    ).paddingOnly(right: 10.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ).paddingSymmetric(vertical: 3.h),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    controller.validateLastSawal();
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
        ),
      ),
    );
  }
}
