import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/Enums/enum.dart';

class Likes extends StatefulWidget {
  const Likes({super.key});

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Activites'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.black,
              child: TabBar(
                indicatorWeight: 3,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                controller: _tabController,
                labelStyle: TextStyle(fontSize: 16, fontFamily: 'Gr'),
                tabs: [
                  Tab(
                    text: 'You',
                  ),
                  Tab(
                    text: 'Following',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 32, 0, 0),
                          child: Text(
                            'New',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Gr',
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.following),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.likes),
                            childCount: 1),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 32, 0, 0),
                          child: Text(
                            'Today',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Gr',
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.followBack),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.likes),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.followBack),
                            childCount: 1),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 32, 0, 0),
                          child: Text(
                            'Thiw Week',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Gr',
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.following),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.likes),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.following),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.likes),
                            childCount: 1),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                _getTabBarViewPage1(ActivityStatus.likes),
                            childCount: 1),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) => _getTabBarViewPage2(),
                            childCount: 2),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getTabBarViewPage1(ActivityStatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xffF35383),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/item8.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'abolfazl_zareh',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Started following',
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'You',
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3min',
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _getRowStatus(status)
        ],
      ),
    );
  }

  Widget _getRowStatus(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.followBack:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
          onPressed: () {},
          child: Text('Follow'),
        );
      case ActivityStatus.likes:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item1.png'),
            ),
          ),
        );

      case ActivityStatus.following:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
      default:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
    }
  }

  Widget _getTabBarViewPage2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xffF35383),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/item8.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'abolfazl_zareh',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Started following',
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'You',
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3min',
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Follow'),
          )
        ],
      ),
    );
  }
}
