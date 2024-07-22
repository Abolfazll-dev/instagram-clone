import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _gridContantHeader(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/item$index.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                childCount: 20),
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 4,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                QuiltedGridTile(2, 1),
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
              ],
            ),
          )
        ],
      )),
    );
  }

  Column _gridContantHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
        ),
        Container(
          width: 394,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.grey.shade900),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset(
                  'images/search_iconnn.svg',
                  width: 20,
                  colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 300,
                height: 46,
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SvgPicture.asset(
                  'images/scan.svg',
                  width: 20,
                  colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _getPostHeaderForHeader('All'),
              _getPostHeaderForHeader('Account'),
              _getPostHeaderForHeader('Hashtag'),
              _getPostHeaderForHeader('Caption'),
              _getPostHeaderForHeader('Story'),
              _getPostHeaderForHeader('Comment'),
              _getPostHeaderForHeader('Rells'),
              _getPostHeaderForHeader('Likes'),
              _getPostHeaderForHeader('Views'),
              _getPostHeaderForHeader('Sport'),
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }

  Widget _getPostHeaderForHeader(String getText) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
      child: Container(
        height: 25,
        width: 70,
        padding: EdgeInsets.symmetric(
          vertical: 4,
        ),
        decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            getText,
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ),
      ),
    );
  }
}
