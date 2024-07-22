import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/screens/HomeScreen.dart';
import 'package:instagram_clone/screens/ProfileScreen.dart';
import 'package:instagram_clone/screens/ReelsScreen.dart';
import 'package:instagram_clone/screens/Users.dart';
import 'package:instagram_clone/screens/addToStory.dart';
import 'package:instagram_clone/screens/searchScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _getIndexNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _getIndexNumber,
            onTap: (int index) {
              setState(() {
                _getIndexNumber = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  child: SvgPicture.asset(
                    'images/Home.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                activeIcon: Container(
                  child: SvgPicture.asset(
                    'images/HomeActive.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: SvgPicture.asset(
                    'images/search_iconnn.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                activeIcon: Container(
                  child: SvgPicture.asset(
                    'images/SearchActive.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: SvgPicture.asset(
                    'images/AddStory.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                activeIcon: Container(
                  child: SvgPicture.asset(
                    'images/add-rectangle.1.svg',
                    width: 28,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: SvgPicture.asset(
                    'images/Reels.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                activeIcon: Container(
                  child: SvgPicture.asset(
                    'images/ReelsActive.svg',
                    width: 26,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 28,
                                width: 28,
                                child:
                                    Image.asset(Users[28]['profileImageNumber'],fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 28,
                                width: 28,
                                child:
                                    Image.asset(Users[28]['profileImageNumber'],fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
            ],
          ),
          body: IndexedStack(index: _getIndexNumber, children: getPages())),
    );
  }

  List<Widget> getPages() {
    return <Widget>[
      HomeScreen(),
      SearchScreen(),
      AddToStoryPage(),
      VideoApp(),
      ProfileScreen(),
    ];
  }
}
