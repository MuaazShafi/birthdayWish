import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class ImagesLayout extends StatelessWidget {
  const ImagesLayout({Key? key}) : super(key: key);

  static const List<String> imageList = [
    'images/bd (1).jpg',
    'images/bd (2).jpg',
    'images/bd (3).jpg',
    'images/bd (4).jpg',
    'images/bd (5).jpg',
    'images/bd (6).jpg',
    'images/bd (7).jpg',
    'images/bd (8).jpg',
    'images/bd (9).jpg',
    'images/bd (10).jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final crossAxisCount = isPortrait ? 1 : 2;

    return GridView.builder(
      itemCount: imageList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 5,
        mainAxisSpacing: 15,
        mainAxisExtent: screenHeight * 0.7,
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
