import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/screens/Activitis.dart';
import 'package:instagram_clone/screens/Comments.dart';
import 'package:instagram_clone/screens/ShareButtom-Sheet.dart';
import 'package:instagram_clone/screens/Users.dart';
import 'package:instagram_clone/screens/messages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Likes();
            })),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                child: _getPostIcon('images/music2.svg'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Likes();
            })),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                child: _getPostIcon('images/heart2.svg'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Messages();
            })),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                child: _getPostIcon('images/chat02.svg'),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) => index == 0
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            children: [_getAddStory()],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            children: [
                              _getProfileImage(74, 74, index),
                            ],
                          ),
                        ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    _getPost1(context, 'images/photo_2023-12-21_23-35-17.jpg'),
                childCount: 1),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _getPost1(context, 'images/post_cover.png'),
                childCount: 1),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _getPost1(
                    context, 'images/photo_2023-12-21_23-35-05.jpg'),
                childCount: 1),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _getPost1(context, 'images/photo_2023-12-21_23-35-20.jpg'),
                childCount: 1),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _getPost1(context, 'images/photo_2023-12-21_23-35-13.jpg'),
                childCount: 1),
          ),
        ],
      )),
    );
  }

  Widget _getPost1(context, String img1) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: [
          getPostHeader(),
          SizedBox(
            height: 20,
          ),
          _getPostInHomeScreen(context, img1)
        ],
      ),
    );
  }

  Widget getPostHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          _getPostHeaderForHeader(60, 38, 38),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account By Test',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                Text(
                  'یک توضیح تستی',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SM',
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset('images/icon_menu.png')
        ],
      ),
    );
  }

  Widget _getProfileImage(double wid, double hei, index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(255, 0, 0, 1),
                      Color.fromRGBO(255, 64, 185, 1),
                      Color.fromRGBO(255, 160, 64, 1),
                      Color.fromRGBO(255, 220, 64, 1),
                    ])),
            child: Padding(
              padding: const EdgeInsets.all(1.5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: Colors.black,
                        width: 4,
                        style: BorderStyle.solid)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: hei,
                    width: wid,
                    child: Image.asset(Users[index]['profileImageNumber']),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(Users[index]['username'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ))
        ],
      ),
    );
  }

  Widget _getPostHeaderForHeader(double dashpatt, double hei, double wid) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(255, 0, 0, 1),
                Color.fromRGBO(255, 64, 185, 1),
                Color.fromRGBO(255, 160, 64, 1),
                Color.fromRGBO(255, 220, 64, 1),
              ])),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: Colors.black, width: 3, style: BorderStyle.solid)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: hei,
              width: wid,
              child: Image.asset(Users[28]['profileImageNumber'],fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getPostInHomeScreen(BuildContext context, String img1) {
    return Column(
      children: [
        Container(
          child: Container(
            height: 400,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: Image.asset(
                    img1,
                    fit: BoxFit.cover,
                    width: 394,
                    height: 394,
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: Image.asset('images/icon_video.png'),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: _getPostIcon('images/heart2.svg'),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: DraggableScrollableSheet(
                                  initialChildSize: 0.6,
                                  minChildSize: 0.2,
                                  maxChildSize: 0.95,
                                  builder: (context, controler) {
                                    return Comments(
                                      controller: controler,
                                    );
                                  },
                                ),
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: _getPostIcon('images/comment.svg'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: DraggableScrollableSheet(
                                  initialChildSize: 0.5,
                                  minChildSize: 0.2,
                                  maxChildSize: 0.8,
                                  builder: (context, controler) {
                                    return ShareButtomSheet(
                                      controller: controler,
                                    );
                                  },
                                ),
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: _getPostIcon('images/Send.svg'),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: _getPostIcon('images/Save.svg'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '264 Likes',
                      // textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 50, 0),
                      child: Text(
                        'Developer : Abolfazl Zareh',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SM',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: DraggableScrollableSheet(
                                    initialChildSize: 0.6,
                                    minChildSize: 0.2,
                                    maxChildSize: 0.95,
                                    builder: (context, controler) {
                                      return Comments(
                                        controller: controler,
                                      );
                                    },
                                  ),
                                );
                              });
                        },
                        child: Text(
                          'View all 90 comments',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'SM',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _getAddStory() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
      child: Column(
        children: [
          Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('images/icon_plus.png'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Add Story',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  void isTrueStory(index) {
    if (Users[index]['storyMode'] == true) {
      return Users[index]['profileImageNumber'];
    }
  }
}

Widget _getPostIcon(String getIconName) {
  return SvgPicture.asset(
    getIconName,
    width: 26,
    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );
}
