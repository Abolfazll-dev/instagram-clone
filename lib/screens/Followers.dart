import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/Users.dart';

class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('__abolfazl_zareh__'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: DefaultTabController(
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
                      'images/item3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
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
                          text: 'Followers 16k',
                        ),
                        Tab(
                          text: 'Following 107',
                        ),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(children: [
              getbody(),
              getbody(),
            ]),
          ),
        ),
    );
  }

  CustomScrollView getbody() {
    return CustomScrollView(
        slivers: [
          SliverList.builder(
            itemBuilder: (context, index) => _getFollower(60, 60, index + 1),
            itemCount: 39,
          )
        ],
      );
  }

  Widget _getFollower(double hei, double wid, int index) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                            Users[index]['profileImageNumber'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            Users[index]['username'],
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade900)),
              onPressed: () {},
              child: Text('Remove'),
            ),
          )
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
