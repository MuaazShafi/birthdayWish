import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class ImagesLayout extends StatelessWidget {
  const ImagesLayout({Key? key}) : super(key: key);

  static const List<String> imageList = [
    'images/abc.jpg',
    'images/bdboy.jpg',
    'images/abc.jpg',
    'images/bdboy.jpg',
    'images/abc.jpg',
    'images/bdboy.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final crossAxisCount = isPortrait ? 1 : 2;

    return GridView.builder(
      itemCount: imageList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 5,
        mainAxisSpacing: 15,
        mainAxisExtent: screenWidth / crossAxisCount,
      ),
      itemBuilder: (context, i) => FullScreenWidget(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imageList[i]),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
