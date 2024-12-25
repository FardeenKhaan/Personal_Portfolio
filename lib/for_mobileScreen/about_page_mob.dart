import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';

class AboutPageMob extends StatefulWidget {
  const AboutPageMob({super.key});

  @override
  State<AboutPageMob> createState() => _AboutPageMobState();
}

class _AboutPageMobState extends State<AboutPageMob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5.0,
        automaticallyImplyLeading: false,
      ),
      endDrawer: MobDrawerReusable(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 117.0,
                      backgroundColor: Colors.purple.shade900,
                      child: CircleAvatar(
                          radius: 114.0,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            'assets/logo_circle.png',
                            filterQuality: FilterQuality.high,
                          )),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.70,
                  alignment: Alignment.center,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "I'm a passionate",
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        speed: Duration(milliseconds: 100),
                      ),
                      TypewriterAnimatedText(
                        "Flutter Developer",
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        speed: Duration(milliseconds: 100),
                      ),
                      TypewriterAnimatedText(
                        "with a keen eye for details.",
                        textStyle: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white70,
                        ),
                        speed: Duration(milliseconds: 100),
                      ),
                    ],
                    // totalRepeatCount: 1,
                    pause: Duration(milliseconds: 500),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    repeatForever: true,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    Text(
                      'About me',
                      style: TextStyle(fontSize: 45.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Hello! I\'m Fardeen Khan, I specialize in Flutter development',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.033),
                    ),
                    Text(
                      'I strive to ensure astounding performance with state of the',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.033),
                    ),
                    Text(
                      'art security for Android, Ios, Web, Mac, Linux and Windows',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.033),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.purple.shade900,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Text(
                              'Flutter',
                              style: TextStyle(fontSize: 15.0),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.purple.shade900,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Text(
                              'Firebase',
                              style: TextStyle(fontSize: 15.0),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.purple.shade900,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Text(
                              'Android',
                              style: TextStyle(fontSize: 15.0),
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60.0),
                //Third section
                Column(
                  children: [
                    Text(
                      'What I Do?',
                      style: TextStyle(fontSize: 45.0),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        AnimatedCardMob(
                            imagepath: 'assets/webL.png',
                            text: 'Web Development',
                            fit: BoxFit.contain,
                            reverse: false),
                        SizedBox(
                          height: 30,
                        ),
                        AnimatedCardMob(
                            imagepath: 'assets/app.png',
                            text: 'App Development',
                            fit: BoxFit.contain,
                            reverse: true),
                        SizedBox(
                          height: 30,
                        ),
                        AnimatedCardMob(
                            imagepath: 'assets/firebase1.png',
                            text: 'Back-end Development',
                            fit: BoxFit.contain,
                            reverse: false),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
