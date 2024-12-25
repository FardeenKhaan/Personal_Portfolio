import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  var logger = Logger();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _descriptioncontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 5.0,
        ),
        endDrawer: MobDrawerReusable(),
        body: ListView(
          children: [
            //First section
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.20,
                right: MediaQuery.of(context).size.width * 0.10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: heightDevice * 0.04,
                        width: widthDevice * 0.18,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade900,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            )),
                        child: Center(child: Text('Hello! I\'m')),
                      ),
                      Text(
                        'Fardeen Khan',
                        style: GoogleFonts.openSans(fontSize: 40.0),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "Software Engineer",
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
                        ],
                        // totalRepeatCount: 1,
                        pause: Duration(milliseconds: 500),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                        repeatForever: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'fardeenkhaan70@gmail.com',
                            style: TextStyle(fontSize: 15.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '+923143174139',
                            style: TextStyle(fontSize: 15.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sukkur, Sindh, Pakistan',
                            style: TextStyle(fontSize: 15.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Download CV
                      Row(
                        children: [
                          ForResumeCv(
                              ResumeCvURL:
                                  'https://drive.google.com/file/d/1xqUWaDZkoeew0pqvn-GYqovICOPp9QEC/view'),
                        ],
                      )
                    ],
                  ),
                  // ForResumeCv(ResumeCvURL: '')
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),

            //Second Section
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
                      fontSize: MediaQuery.of(context).size.width * 0.035),
                ),
                Text(
                  'I strive to ensure astounding performance with state of the',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.035),
                ),
                Text(
                  'art security for Android, Ios, Web, Mac, Linux and Windows',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.035),
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
                  ],
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            //Fourth Section
            Column(
              children: [
                Text(
                  'Contact me',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormReusable(
                  Controller: _namecontroller,
                  maxline: 1,
                  prefixIcon: Icon(Icons.person),
                  heading: 'Name',
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormReusable(
                  Controller: _emailcontroller,
                  maxline: 1,
                  prefixIcon: Icon(Icons.mail),
                  heading: 'Email',
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormReusable(
                  Controller: _descriptioncontroller,
                  maxline: 6,
                  prefixIcon: Icon(Icons.description),
                  heading: 'Description',
                  width: MediaQuery.of(context).size.width * 0.92,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.purple.shade900),
                  child: MaterialButton(
                    onPressed: () async {
                      logger.d(_namecontroller.text);
                      final addData = new AddDataFirestore();
                      if (_formkey.currentState!.validate()) {
                        await addData.addResponse(_namecontroller.text,
                            _emailcontroller.text, _descriptioncontroller.text);
                        _formkey.currentState!.reset();
                        DialogError(context);
                      }
                    },
                    child: Text('Get in touch'),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ));
  }
}
