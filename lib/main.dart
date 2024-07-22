import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/HomeScreen.dart';
import 'package:instagram_clone/screens/LoginPage.dart';
import 'package:instagram_clone/screens/ProfileScreen.dart';
import 'package:instagram_clone/screens/SwichAccPage.dart';
import 'package:instagram_clone/screens/mainScreen.dart';


void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            color: Colors.white,
            fontFamily: 'gr',
            fontSize: 16,
          ),
          headlineLarge: TextStyle(
            color: Colors.white,
            fontFamily: 'gr',
            fontSize: 18,
          ),
          titleSmall: TextStyle(
            color: Colors.grey,
            fontFamily: 'gr',
            fontSize: 18,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            
            backgroundColor: Color(0xffF35383),
            // minimumSize: Size(129, 46),
          ),
        ),
      )  ,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class GetBody extends StatelessWidget {
  const GetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'images/pattern1.png',
            ),
            repeat: ImageRepeat.repeat),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(220, 28, 31, 46),
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   width: double.infinity,
              // ),
              Center(
                child: Image(
                  image: AssetImage(
                    'images/logo_splash.png',
                  ),
                  width: 155.0,
                ),
              ),
              Positioned(
                bottom: 22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'gr'),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'FireFaller',
                      style: TextStyle(
                          color: Colors.blue, fontFamily: 'gr', fontSize: 14
                          // fontWeight: FontWeight.bold,
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
