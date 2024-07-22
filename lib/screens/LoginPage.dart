import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/SwichAccPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban1.addListener(() {
      print('focus');
    });
    negahban2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [Color(0xff323A99), Color(0xffF98BFC)],
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _getImageContainer(),
            _getContainerBox(),
          ],
        ),
      ),
    );
  }

  Widget _getContainerBox() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in to',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'gr', fontSize: 20),
                      ),
                      Image(
                        image: AssetImage('images/moodinger_logo.png'),
                        width: 102,
                        height: 25,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(44, 36, 44, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      focusNode: negahban1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: 'gr',
                            color: negahban1.hasFocus
                                ? Color(0xffF35383)
                                : Color(0xffffffff)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(width: 3.0, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide:
                              BorderSide(width: 3.0, color: Color(0xffF35383)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(44, 32, 44, 0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      focusNode: negahban2,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontFamily: 'gr',
                            color: negahban2.hasFocus
                                ? Color(0xffF35383)
                                : Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(width: 3.0, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide:
                              BorderSide(width: 3.0, color: Color(0xffF35383)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(44, 32, 44, 0),
                      child: Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return SwitchAccountScreen();
                            }));
                          },
                          child: Text(
                              '                                    Login                                     '),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 72,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/rocket.png'),
                ),
              ),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }

  @override
  void dispose() {
    negahban1.dispose();
    negahban2.dispose();
    super.dispose();
  }
}
