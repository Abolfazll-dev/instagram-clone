import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/screens/Followers.dart';
import 'package:instagram_clone/screens/Users.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  // pinned: true,
                  toolbarHeight: 80,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 18, top: 18),
                      child: Icon(Icons.menu),
                    )
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10),
                    child: Container(
                      height: 14,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  expandedHeight: 170,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/item1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _getHeaderProfile(context),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: TabBarViewDelegate(
                    TabBar(
                      indicatorPadding: EdgeInsets.only(bottom: 4),
                      indicatorWeight: 2,
                      indicatorColor: Color.fromARGB(255, 255, 255, 255),
                      tabs: [
                        Tab(
                          icon: Image.asset('images/icon_tab_posts.png'),
                        ),
                        Tab(
                          icon: Image.asset('images/icon_tab_bookmark.png'),
                        ),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(top: 20, left: 5, right: 5),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(((context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }), childCount: 10),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ]),
                    ),
                  )
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(((context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }), childCount: 10),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ]),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _getHeaderProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 100,
                        ),
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
                            padding: const EdgeInsets.all(1.3),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    Users[28]['profileImageNumber'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 60,
                          child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 4,
                                color: Colors.black,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.5),
                              child: SvgPicture.asset(
                                'images/addd.svg',
                                width: 20,
                                colorFilter: ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Followers();
                            },
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Text(
                            '16k',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          '107',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Abolfazl Zareh',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'FullStack Web | Flutter | ai Developer',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.9)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Share Profile',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.9)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Setting',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.9)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Pinned ',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              _getProfileImage(50, 50, 'images/item4.png', 'test'),
              _getProfileImage(50, 50, 'images/item9.png', 'test1'),
              _getProfileImage(50, 50, 'images/item2.png', 'test2'),
              _getProfileImage(50, 50, 'images/item8.png', 'test3'),
            ],
          )
        ],
      ),
    );
  }

  Widget _getProfileImage(double wid, double hei, index, String des) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0.3),
                      Color.fromRGBO(255, 255, 255, 0.3),
                      Color.fromRGBO(255, 255, 255, 0.3),
                      Color.fromRGBO(255, 255, 255, 0.3),
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
                    child: Image.asset(
                      index,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(des,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ))
        ],
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);

  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
