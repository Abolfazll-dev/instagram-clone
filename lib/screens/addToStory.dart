import 'package:flutter/material.dart';

class AddToStoryPage extends StatelessWidget {
  const AddToStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Text('Post'),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'images/icon_arrow_down.png',
              width: 20,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Next',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
                ),
                // SizedBox(
                //   width: 5,
                // ),
                // Image.asset(
                //   'images/icon_arrow_right_box.png',
                //   width: 26,
                // )
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 10, 17, 84),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 394,
                    height: 375,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          'images/Rectangle53.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => _getAddPost(index),
                      childCount: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Color.fromARGB(255, 17, 17, 17),
            ),
            width: double.infinity,
            height: 83,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Draft',
                  style: TextStyle(
                    color: Color(0xffF35383),
                    fontFamily: 'Gr',
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Gallery',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gr',
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Take',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gr',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getAddPost(index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: Image.asset(
          'images/item$index.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
