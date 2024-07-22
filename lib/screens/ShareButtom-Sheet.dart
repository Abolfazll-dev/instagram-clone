import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/screens/Users.dart';

class ShareButtomSheet extends StatelessWidget {
  const ShareButtomSheet({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
            padding: EdgeInsets.fromLTRB(44, 20, 44, 0),
            decoration:
                BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.2)),
            height: 3000,
            child: _getGridView(context)),
      ),
    );
  }

  Widget _getGridView(BuildContext context) {
    // return GridView.builder(
    //   controller: controller,
    //   itemCount: 100,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 4,
    //     crossAxisSpacing: 20,
    //     mainAxisSpacing: 20,
    //   ),
    //   itemBuilder: (BuildContext context, index) {
    //     return Container(
    //       color: Colors.red,
    //     );
    //   },
    // );

    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Column(children: [
          Container(
            width: 67,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Share',
                style: TextStyle(
                    color: Colors.white, fontSize: 22, fontFamily: 'GR'),
              ),
              Image.asset('images/icon_share_bottomsheet.png')
            ],
          ),
          SizedBox(
            height: 28,
          ),
          SizedBox(
            height: 32.0,
          ),
        ]),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 85, 0, 0),
          child: CustomScrollView(
            controller: controller,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Container(
                    width: 340.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: SvgPicture.asset(
                            'images/search_iconnn.svg',
                            width: 26,
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search...',
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    ((context, index) => _getGridItem(index)),
                    childCount: 40),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 110),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 27,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 13),
                child: Text('Share'),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _getGridItem(index) => Column(
        children: [
          Container(
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                Users[index]['profileImageNumber'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            Users[index]['username'],
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Gr'),
          )
        ],
      );
}
