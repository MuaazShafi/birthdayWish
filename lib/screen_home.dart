import 'dart:async';
import 'package:birthday/screen_bd.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ConfettiController _controller;
  late Timer _timer;
  int _start = 0;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 26));
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.28),
              child: Container(
                height: size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.4,
                    image: AssetImage(
                      'images/bdboy.jpg',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.28),
              child: Container(
                height: size.height,
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Column(
              children: [
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: size.height * 0.35,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/abc.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Happy\nBirthday\nName", // "$_start",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: size.width * 0.09,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width * 0.6,
                  width: size.width * 0.6,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: SizedBox(
                          width: size.width * 0.4,
                          height: size.width * 0.4,
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.grey.shade800,
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.pinkAccent),
                            strokeWidth: 10,
                            value: _start * .039,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$_start",
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: size.width * 0.15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ConfettiWidget(
              confettiController: _controller,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              emissionFrequency: 0.3,
              colors: const [
                Colors.red,
                Colors.green,
                Colors.purple,
                Colors.blue,
                Colors.yellow,
              ],
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * .08,
          child: const BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: Colors.pinkAccent,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.snackbar(
              "Please Wait",
              "According to your age the timer will run",
              snackPosition: SnackPosition.BOTTOM,
            );
            startTimer();
            _controller.play();
          },
          backgroundColor: const Color(0xff13195b),
          child: const Icon(
            Icons.play_circle_outline,
            size: 40,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 26) {
          setState(() {
            timer.cancel();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BdScreen()));
          });
        } else {
          setState(() {
            _start++;
          });
        }
      },
    );
  }
}
