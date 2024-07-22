// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:instagram_clone/Models/crypto.dart';
import 'package:instagram_clone/screens/Users.dart';
import 'package:instagram_clone/screens/message-page.dart';

class Messages extends StatelessWidget {
  Messages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('Abolfazl_Zareh'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'images/Message-Note-Icon.svg',
              width: 26,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade900),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              'images/search_iconnn.svg',
                              width: 20,
                              colorFilter: ColorFilter.mode(
                                  Colors.grey, BlendMode.srcIn),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            width: 320,
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'GR',
                          ),
                        ),
                        Text(
                          'Requests',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'SM',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => _getMessageUsers(index, context),
                    childCount: 20),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getMessageUsers(index, context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return MessagePage();
          },
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                Users[index]['profileImageNumber'],
                width: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Users[index]['username'],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  Users[index]['messageStatus'],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'images/camera.svg',
              width: 26,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
