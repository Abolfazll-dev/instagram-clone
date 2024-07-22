import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/screens/Users.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  State<VideoApp> createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late final VideoPlayerController _controller =
      VideoPlayerController.asset('images/v1.mp4')
        ..initialize()
        ..setLooping(true)
        ..play();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned.fill(
            child: Image.asset('images/Screenshot1.png'),
          ),
          Center(
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  'images/Play.svg',
                  width: 5,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 0, 0, 20),
            child: Positioned(
              bottom: 0,
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: 2,
                                        style: BorderStyle.solid)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                        Users[5]['profileImageNumber']),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'magiblocks.us',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'What,s Your favorite Game mode ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 30)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 240,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Container(
                                  child: SvgPicture.asset(
                                    'images/Music.svg',
                                    width: 20,
                                    colorFilter: ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                  'magiblocks.us',
                                  style: TextStyle(
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              Text(
                                ' . Original audio',
                                style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(350, 0, 0, 20),
            child: Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'images/heart2.svg',
                      width: 30,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '16k',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    child: SvgPicture.asset(
                      'images/comment.svg',
                      width: 30,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '9,026',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    child: SvgPicture.asset(
                      'images/Send.svg',
                      width: 30,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '1,923',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SvgPicture.asset(
                      'images/menu3.svg',
                      width: 30,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SvgPicture.asset(
                      'images/Music.svg',
                      width: 30,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                // color: Colors.black,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 20),
                      child: Text(
                        'Reels',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 0),
                      child: SvgPicture.asset(
                        'images/arrow.svg',
                        width: 40,
                        colorFilter: ColorFilter.mode(
                            const Color.fromARGB(255, 255, 255, 255),
                            BlendMode.srcIn),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, right: 10),
                      child: SvgPicture.asset(
                        'images/camera.svg',
                        width: 35,
                        colorFilter: ColorFilter.mode(
                            const Color.fromARGB(255, 255, 255, 255),
                            BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: VideoPlayer(_controller),
          ),
        ],
      ),
    );
  }
}
