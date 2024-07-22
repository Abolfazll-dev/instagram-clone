  import 'package:flutter/material.dart';

Widget _getAddStory1() {
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
            style: TextStyle(color: Colors.white,fontSize: 14),
          ),
        ],
      ),
    );
  }