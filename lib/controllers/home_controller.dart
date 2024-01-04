import 'dart:async';

import 'package:birthday/views/screens/screen_bd.dart';
import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late ConfettiController controllerConfetti;
  late Timer timer;
  Rx<int> age = 24.obs;
  Rx<int> progress = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controllerConfetti =
        ConfettiController(duration: Duration(seconds: age.value));
  }

  @override
  void onClose() {
    // TODO: implement onClose
    timer.cancel();
    controllerConfetti.dispose();
    controllerConfetti.stop();
    super.onClose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (progress == age) {
          timer.cancel();
          controllerConfetti.stop();
          progress.value = 0;
          Get.offAll(BdScreen());
        } else {
          progress.value++;
        }
      },
    );
  }
}
