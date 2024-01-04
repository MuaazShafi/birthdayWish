import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoPath;

  const VideoPlayerScreen({super.key, required this.videoPath});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  void _playPause() {
    setState(() {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
        _isPlaying = false;
      } else {
        _videoPlayerController.play();
        _isPlaying = true;
      }
    });
  }

  void _previous() {
    // logic for previous video
  }

  void _next() {
    // logic for next video
  }

  void _expand() {
    _navigateToFullScreen();
    // logic for expanding video to full screen
  }

  // void _decreaseVolume() {
  //   setState(() {
  //     if (_videoPlayerController.value.volume > 0) {
  //       _videoPlayerController
  //           .setVolume(_videoPlayerController.value.volume - 0.1);
  //     }
  //   });
  // }
  //
  // void _increaseVolume() {
  //   setState(() {
  //     if (_videoPlayerController.value.volume < 1) {
  //       _videoPlayerController
  //           .setVolume(_videoPlayerController.value.volume + 0.1);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width /
                    _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              ),
            )
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                VideoProgressIndicator(
                  _videoPlayerController,
                  allowScrubbing: true,
                  padding: const EdgeInsets.all(16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.skip_previous),
                      onPressed: _previous,
                    ),
                    IconButton(
                      icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                      onPressed: _playPause,
                    ),
                    IconButton(
                      icon: const Icon(Icons.skip_next),
                      onPressed: _next,
                    ),
                    const Spacer(),
                    IconButton(
                      alignment: Alignment.centerRight,
                      icon: const Icon(Icons.fullscreen),
                      onPressed: _expand,
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(
                //       icon: Icon(Icons.volume_down),
                //       onPressed: _decreaseVolume,
                //     ),
                //     Slider(
                //       value: _videoPlayerController.value.volume,
                //       onChanged: (value) {
                //         setState(() {
                //           _videoPlayerController.setVolume(value);
                //         });
                //       },
                //       min: 0,
                //       max: 1,
                //       divisions: 10,
                //     ),
                //     IconButton(
                //       icon: Icon(Icons.volume_up),
                //       onPressed: _increaseVolume,
                //     ),
                //   ],
                // ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToFullScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Scaffold(
            body: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                ),
              ),
            ),
          ),
        ));
  }
}
