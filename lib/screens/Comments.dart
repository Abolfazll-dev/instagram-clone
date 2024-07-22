import 'dart:ui';

import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.2),
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: _getContent(context),
        ),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 67,
                    margin: EdgeInsets.only(top: 10, bottom: 22),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Comments',
                        style: TextStyle(
                          fontFamily: 'GR',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
