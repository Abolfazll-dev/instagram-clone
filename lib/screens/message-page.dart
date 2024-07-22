import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/screens/Users.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'images/dedd.png',
            ),),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 103, 80, 42),
          elevation: 0,
          title: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    Users[1]['profileImageNumber'],
                    width: 40,
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'amirahmadadibii',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Business chat',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: SvgPicture.asset(
                'images/phone.svg',
                // width: 17,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: SvgPicture.asset(
                'images/cameraa.svg',
                // width: 17,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('images/2.jpg')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'amirahmadadibii',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Gr', fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Moodinger',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '16K Followers . 37 posts',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'you ve followed this Moodinger account since\n 2023',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'You both follow amirahmaddayli and 14 others',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'View profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Spacer(),
                  Text(
                    'SUN  4:51  PM',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: 250,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 17, 0),
                            child: Text(
                              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Sm',
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade700,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SvgPicture.asset(
                              'images/camera1.svg',
                              // width: 17,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 250,
                          height: 37,
                          child: TextField(
                            
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Message'  ,
                              hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                        Container(
                          child: SvgPicture.asset(
                              'images/mic.svg',
                              // width: 17,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          child: SvgPicture.asset(
                              'images/pic2.svg',
                              // width: 17,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          child: SvgPicture.asset(
                              'images/emoj.svg',
                              // width: 17,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
