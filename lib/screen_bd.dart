  import 'package:birthday/layout/layout_birthday_images.dart';
  import 'package:flutter/material.dart';

  import 'layout/layout_birthday_video.dart';
  import 'layout/layout_birthday_wish.dart';

  class BdScreen extends StatelessWidget {
    const BdScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 3,
        child: Builder(
          builder: (BuildContext context) {
            final Size size = MediaQuery.of(context).size;
            final double appBarHeight = size.height * 0.1;
            final double tabBarHeight = size.height * 0.07;

            return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.grey.shade400,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(appBarHeight),
                  child: AppBar(
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    title: const Text("Happy Wala Birthday"),
                    centerTitle: true,
                    backgroundColor: Colors.pinkAccent,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(tabBarHeight),
                      child: const TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              'WISH',
                            ),
                          ),
                          Tab(
                            child: Text('IMAGES'),
                          ),
                          Tab(
                            child: Text('VIDEO'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                body: SizedBox(
                  height: size.height - appBarHeight - tabBarHeight,
                  child: TabBarView(
                    children: [
                      WishLayout(),
                      const ImagesLayout(),
                      const VideoPlayerScreen(
                        videoPath: 'images/abc.mp4',
                      ),
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
