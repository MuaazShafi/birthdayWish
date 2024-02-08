import 'package:birthday/helpers/constants.dart';
import 'package:birthday/views/layout/layout_birthday_images.dart';
import 'package:birthday/views/layout/layout_birthday_wish.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (BuildContext context) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey.shade400,
              appBar: AppBar(
                backgroundColor: BDWishColor.appColor,
                title: Text(
                  "Happy BirthDay Shal",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Amellia",
                    fontSize: 20.sp,
                  ),
                ),
                centerTitle: true,
              ),
              body: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      indicator: BoxDecoration(
                        color: BDWishColor.appColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      dividerHeight: 0,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          text: "Wishes",
                        ),
                        Tab(
                          text: "Images",
                        ),
                      ],
                    ).paddingSymmetric(
                      horizontal: 20.sp,
                      vertical: 5.sp,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          WishLayout(),
                          ImagesLayout(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
