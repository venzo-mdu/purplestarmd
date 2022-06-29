import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YTReview extends StatefulWidget {
  const YTReview({Key? key}) : super(key: key);

  @override
  State<YTReview> createState() => _YTReviewState();
}

class _YTReviewState extends State<YTReview> {
  late YoutubePlayerController controller;

  @override

  void deactivate(){
    controller.pause();
    super.deactivate();
  }
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  void initState(){
    super.initState();
    const url = 'https://youtu.be/I9ceqw5Ny-4';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true
      ),



    );
  }


  Widget build(BuildContext context) => YoutubePlayerBuilder(
    player: YoutubePlayer(
      controller: controller,
    ),
    builder: (context, player) => Scaffold(
      backgroundColor: Colors.black,
      body: Center(

        child: player,
      ),
    )
  );
}
