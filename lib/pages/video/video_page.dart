import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/videos/tutorial_1.mp4',
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    )..initialize().then((_) {
        setState(() {});
      });

    //Iniciar video
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.close,
              color: AppTheme.kPrimary,
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: _controller.value.isInitialized
          ? Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        playedColor: AppTheme.kPrimary,
                        bufferedColor: Colors.grey[100] ?? Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppTheme.kSubPrimary,
                        child: Icon(
                          Icons.share,
                          size: 20.0,
                          color: Colors.black45,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_circle_filled,
                          size: 60.0,
                          color: AppTheme.kPrimary,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: AppTheme.kSubPrimary,
                        child: Icon(
                          Icons.home_max_rounded,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}
