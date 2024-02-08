import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class ImagesLayout extends StatelessWidget {
  const ImagesLayout({Key? key}) : super(key: key);

  static const List<String> imageList = [
    'https://drive.google.com/uc?export=view&id=1yuuDBMxxs7cbvNI3lUxwbZ7csyGK8X8O',
    'https://drive.google.com/uc?export=view&id=1ws61Fm3cG8_UaoUi1fYwxJ_8UemqJqKy',
    'https://drive.google.com/uc?export=view&id=1wkjjaxVM1tjpfCCm2A69IL5ia82J2Kjp',
    'https://drive.google.com/uc?export=view&id=1wWj_d2IKY115AQC8dm1pR9r9ZeJG1F_S',
    'https://drive.google.com/uc?export=view&id=1wBD-h7QXJw1-g7m-KXo6ZrS3G13Z5stF',
    'https://drive.google.com/uc?export=view&id=1wAC_pT66Kb6xEqKeG0SSi8W_F0Tix28s',
    'https://drive.google.com/uc?export=view&id=1unGfGJnla6ZZ1i_iwCTWmtY23MpTd47_',
    'https://drive.google.com/uc?export=view&id=1ueZEi-mLGQpMUG-lS7a6NVrBN_FUaFwr',
    'https://drive.google.com/uc?export=view&id=1uas6q-e-5QJ0ObVBPIS5X4tbiPLVlO74',
    'https://drive.google.com/uc?export=view&id=1uZJoMVsDm5l4oa32y6nY4fGAJGPsDZSZ',
    'https://drive.google.com/uc?export=view&id=1tn2e5jxuhiXKw5R4IdGxVOhzXhmAditJ',
    'https://drive.google.com/uc?export=view&id=1sdCoU3duGe6KobDT_m5d93F-5sla-5LF',
    'https://drive.google.com/uc?export=view&id=1pJLFglO5dkTk4oJ2mdMQFvO8HilP1B34',
    'https://drive.google.com/uc?export=view&id=1p1qMTgxZukuNfJLhOSMzrwMloFfd1shi',
    'https://drive.google.com/uc?export=view&id=1mEKKU9Gh9tctehItB3EiazD_ndXk_cw9',
    'https://drive.google.com/uc?export=view&id=1mD4MI7Twi7YjCT92KBZyLbrvLxcPkPc8',
    'https://drive.google.com/uc?export=view&id=1le5YUpkoYj2OSjQdmW_LUWwEJK7JRfTW',
    'https://drive.google.com/uc?export=view&id=1lYytUbJjeBYp5-UmTl1Di4msg6OxjVuT',
    'https://drive.google.com/uc?export=view&id=1lPKzJvF7iKcg8QO-Tcat9tD1Svhfd6aO',
    'https://drive.google.com/uc?export=view&id=1jTNVq1_s6NA675hhvx6YDB_wIWKg-vG3',
    'https://drive.google.com/uc?export=view&id=1gvlq0mUqhRPSTnaXwXajdM-KF8VhWdCi',
    'https://drive.google.com/uc?export=view&id=1gi2sTcOqlMfA1ufWuL01MPymctlyZhap',
    'https://drive.google.com/uc?export=view&id=1gFYD2mIs6KppeulAryG09iCrBfVT6Eur',
    'https://drive.google.com/uc?export=view&id=1Lbr2i779rojXHZdr0t1-UYoM0fzYVlXd',
    'https://drive.google.com/uc?export=view&id=1NhwvlqLWHmNQpQNcTpZCT8Lslqzzznzg',
    'https://drive.google.com/uc?export=view&id=1ODWPXM8GILt2CylPtdsnIURzYJMJ1EcV',
    'https://drive.google.com/uc?export=view&id=1Qfq_5cN6-oRfP_l6I_VGU3l4CUyP68dT',
    'https://drive.google.com/uc?export=view&id=1RDKAkj5_cBWfJWXeyqO-3RZIlE1tEHmF',
    "https://drive.google.com/uc?export=view&id=1SUzPs43vqMjRm2RT4qoQfHJj64OxMm1c",
    'https://drive.google.com/uc?export=view&id=1SfJqF77qMG2ycKt-42g4Y13mGLmYSQ-M',
    'https://drive.google.com/uc?export=view&id=1U1Ttm7U3r6N22DVuI29LqthxnJmf5NAx',
    "https://drive.google.com/uc?export=view&id=1V73Kg5lzSVO93u7H-KuFgWlM7IBZ8Dnd",
    "https://drive.google.com/uc?export=view&id=1WmPvtAS4m9YvmjtRW8hrU9vVgbYE4CsK",
    "https://drive.google.com/uc?export=view&id=1XBmo2805zeD_6GSiUuUKs_gfgNahLRsz",
    "https://drive.google.com/uc?export=view&id=1Zq9aYrgK9XmezWq5PeuKnk_IKri6FX0T",
    "https://drive.google.com/uc?export=view&id=1_cn6GzNKkMnLfuL3eSpUP-ijYnJrRK0Z",
    "https://drive.google.com/uc?export=view&id=1abHXEbwxCLnmMRyjoDRxvDmklM94UQKZ",
    "https://drive.google.com/uc?export=view&id=1emZj4bUHKSQioxRrL5NbUEmJ1pGEutym",
    "https://drive.google.com/uc?export=view&id=1epQSlRWJ5JJuI3dQJY7XuJdnsPyHDi-M",
    "https://drive.google.com/uc?export=view&id=1-86AcSI1oQjaZ78rnezlmu5py9VkubhM",
    "https://drive.google.com/uc?export=view&id=10BngHhmJBLV1nCoeTkkz7Fg6jA0trHed",
    "https://drive.google.com/uc?export=view&id=145Ency8B-VBZJyysv5DvxqpC4ILV6hle",
    "https://drive.google.com/uc?export=view&id=17kwUPX9i_QEMtbMoNCh9b5ymhEWS0Xd0",
    "https://drive.google.com/uc?export=view&id=18Pf6UNeiTehZDVh_0x9QQWZ-2dDuZxe-",
    "https://drive.google.com/uc?export=view&id=19Dj3RuyitMNWyyfi-od1RYlCGYZFf18a",
    "https://drive.google.com/uc?export=view&id=19YJ4OcCPkTeB3YZtF822MZau93wm-M7O",
    "https://drive.google.com/uc?export=view&id=1Bamg3Ri4V7CbCYk7UsMlTQhq3u-CNO4A",
    "https://drive.google.com/uc?export=view&id=1BiKwmGw18Qtqie4OQACZslBrTgybkQiu",
    "https://drive.google.com/uc?export=view&id=1BrbMjO2XiZseO4hoCw-ZQsXGD9NREt2Q",
    "https://drive.google.com/uc?export=view&id=1CQeOFW0SoQ6LpTt20bDSHIyYy7wuNNPs",
    "https://drive.google.com/uc?export=view&id=1CxJ9LnwZxh6abcWgXpK2jdIN_KuRoEpq",
    "https://drive.google.com/uc?export=view&id=1FCMeE50UUSsP_afyVWaL5vZrcziFilvH",
    "https://drive.google.com/uc?export=view&id=1FnSYT3kBJT1ZXhDKPSM8lW1moWDAaBq8",
    "https://drive.google.com/uc?export=view&id=1G2KZRDn923NGKDARgCw8x--6Arw0w3Mo",
    "https://drive.google.com/uc?export=view&id=1JYogqiBOOTKjJxrS_rfulcAVRsXnFOPb",
    "https://drive.google.com/uc?export=view&id=1LOaVJKvB8xOUEYytCdsLDsyhgRTOhxc-",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return MasonryGridView.builder(
      itemCount: imageList.length,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // crossAxisSpacing: 5,
        // mainAxisSpacing: 15,
        // mainAxisExtent: screenHeight * 0.7,
      ),
      itemBuilder: (context, i) => FullScreenWidget(
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Image.network(imageList[i]),

          // borderRadius: const BorderRadius.all(
          //   Radius.circular(10),
          // ),
        ),
      ),
    );
  }
}
