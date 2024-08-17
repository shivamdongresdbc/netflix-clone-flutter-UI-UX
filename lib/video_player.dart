import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'constaint/constaint.dart';

class VideoccPlayer extends StatefulWidget {
  const VideoccPlayer({Key? key}) : super(key: key);

  @override
  State<VideoccPlayer> createState() => _VideoccPlayerState();
}

class _VideoccPlayerState extends State<VideoccPlayer> {
  late YoutubePlayerController _controller;
  void runYoutubePlayer(MobileStarter) {
    _controller = YoutubePlayerController(
        flags: const YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: false,
        ),
      initialVideoId: MobileStarter,
    );
  }

  @override
  void initState() {
    runYoutubePlayer(stranger_things_trailor);
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
  }

  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Video Player'),
            ),
            body: Center(
                child: Container(
              child: player,
            )),
          );
        }
        );
  }
}
