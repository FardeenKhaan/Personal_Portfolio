import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
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
        drawer: DrawerReusable(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            size: 28.0,
          ),
          elevation: 5.0,
          title: Row(
            children: [
              Spacer(
                flex: 3,
              ),
              TabsView(
                title: 'Home',
                route: '/',
              ),
              Spacer(),
              TabsView(
                title: 'Works',
                route: '/Works',
              ),
              Spacer(),
              TabsView(
                title: 'About',
                route: '/About',
              ),
              Spacer(),
              TabsView(
                title: 'Contact',
                route: '/Contact',
              ),
              Spacer()
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: heightDevice - 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: heightDevice * 0.04,
                        width: widthDevice * 0.09,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade900,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            )),
                        child: Center(
                            child: Text(
                          'Hello! I\'m',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                      Text(
                        'Fardeen Khan',
                        style: GoogleFonts.openSans(fontSize: 50.0),
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
                      //Download CV
                      ForResumeCv(
                          ResumeCvURL:
                              'https://drive.google.com/file/d/1xqUWaDZkoeew0pqvn-GYqovICOPp9QEC/view')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 158.0,
                        child: CircleAvatar(
                            radius: 155.0,
                            backgroundColor: Colors.black,
                            child: Image.asset(
                              'assets/logo_circle.png',
                              filterQuality: FilterQuality.high,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // second section
            Container(
              height: heightDevice / 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.41,
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade900,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.shade900,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // Shadow position
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/aboutmob.webp',
                            filterQuality: FilterQuality.high,
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width * 0.35,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'About me',
                        style: TextStyle(fontSize: 45.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '''Hello! I'm Fardeen Khan, I specialize in Flutter development''',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        '''I strive to ensure astounding performance with state of''',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        '''the art security for Android, Ios, Web, Mac, Linux and Windows''',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
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
                ],
              ),
            ),

            // third section
            Container(
              height: heightDevice / 1.13,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('What I do?', style: TextStyle(fontSize: 40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWeb(
                          imagepath: 'assets/webL.png',
                          text: 'Web Development',
                          fit: BoxFit.contain,
                          reverse: false),
                      AnimatedCardWeb(
                          imagepath: 'assets/app.png',
                          text: 'App Development',
                          fit: BoxFit.contain,
                          reverse: true),
                      AnimatedCardWeb(
                          imagepath: 'assets/firebase1.png',
                          text: 'Back-end Development',
                          fit: BoxFit.contain,
                          reverse: false),
                    ],
                  ),
                  SizedBox(height: 70.0),
                ],
              ),
            ),
            // fourth section
            Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Contact me',
                    style: TextStyle(fontSize: 40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                TextFormReusable(
                                    Controller: _namecontroller,
                                    maxline: 1,
                                    prefixIcon: Icon(Icons.person),
                                    heading: 'Name',
                                    width: 350),
                                SizedBox(
                                  width: 10,
                                ),
                                TextFormReusable(
                                    Controller: _emailcontroller,
                                    maxline: 1,
                                    prefixIcon: Icon(Icons.mail),
                                    heading: 'Email',
                                    width: 350)
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormReusable(
                                Controller: _descriptioncontroller,
                                maxline: 6,
                                prefixIcon: Icon(Icons.description),
                                heading: 'Description',
                                width: 700),
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
                                    await addData.addResponse(
                                        _namecontroller.text,
                                        _emailcontroller.text,
                                        _descriptioncontroller.text);
                                    _formkey.currentState!.reset();
                                    DialogError(context);
                                  }
                                },
                                child: Text('Get in touch'),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
