import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/HomeScreen.dart';
import 'package:instagram_clone/screens/Users.dart';
import 'package:instagram_clone/screens/mainScreen.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/switch_account_background.png',
                        ),
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.repeat),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 36),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ],
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  Users[28]['profileImageNumber'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text('Abolfazl Zareh',
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return MainScreen();
                                    }));
                                  },
                                  child: Text('Confirm'),
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style),
                            ),
                            Text('switch account',
                                style:
                                    Theme.of(context).textTheme.headlineMedium)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 132, 0, 63),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account? / ',
                    style: Theme.of(context).textTheme.titleSmall),
                Text('Sign up',
                    style: Theme.of(context).textTheme.headlineLarge),
              ],
            ),
          )
        ],
      )),
    );
  }
}
