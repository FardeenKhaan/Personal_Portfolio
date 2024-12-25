import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:fk_protfolio/for_webScreen/contact_page_web.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPageWeb extends StatefulWidget {
  const AboutPageWeb({super.key});

  @override
  State<AboutPageWeb> createState() => _AboutPageWebState();
}

class _AboutPageWebState extends State<AboutPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
            height: heightDevice - 36,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/about2.jpg'),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 158.0,
                        backgroundColor: Colors.grey.shade900,
                        child: CircleAvatar(
                            radius: 155.0,
                            // maxRadius: 140,
                            backgroundColor: Colors.black,
                            child: Image.asset(
                              'assets/logo_circle.png',
                              filterQuality: FilterQuality.high,
                            )),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "I'm a passionate",
                            textStyle: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            speed: Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            "Flutter Developer",
                            textStyle: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            speed: Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            "with a keen eye for details.",
                            textStyle: TextStyle(
                              fontSize: 28.0,
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
                  ],
                )
              ],
            ),
          ),
          //
          Container(
            height: heightDevice / 1.1,
            // width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/about1.jpg'),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width *
                            0.010, // Dynamically adjust font size
                        color: Colors.white,
                        height: 1.5, // Adds line spacing
                      ),
                      children: [
                        TextSpan(
                          text: "Hi! I'm ",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "Fardeen Khan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade300, // Highlighted name
                          ),
                        ),
                        TextSpan(
                          text: ", a dedicated ",
                        ),
                        TextSpan(
                          text: "Flutter Developer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.tealAccent, // Highlighted role
                          ),
                        ),
                        TextSpan(
                          text:
                              " with a passion for creating visually appealing and user-friendly mobile applications.\n\n",
                        ),
                        TextSpan(
                          text: "My expertise lies in leveraging the powerful ",
                        ),
                        TextSpan(
                          text: "Flutter framework",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.tealAccent,
                          ),
                        ),
                        TextSpan(
                          text:
                              " to build cross-platform apps that deliver seamless performance and engaging user experiences.\n\n",
                        ),
                        TextSpan(
                          text:
                              "I pride myself on writing clean, maintainable code and staying up-to-date with the latest industry trends and best practices. Whether it's designing intuitive ",
                        ),
                        TextSpan(
                          text: "UI/UX",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade300,
                          ),
                        ),
                        TextSpan(
                          text:
                              " or \noptimizing app performance, I strive to bring innovative solutions to every project I undertake.\n\n",
                        ),
                        TextSpan(
                          text: "Let's build something amazing together!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width *
                                0.016, // Slightly larger for emphasis
                            color: Colors.purple.shade300,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //
          Container(
            height: heightDevice / 1.7,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/about3.jpg'),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high)),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.10,
                        left: MediaQuery.of(context).size.width * 0.07,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            """Let's Work Together.""",
                            style: TextStyle(
                                fontSize: widthDevice * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            """Let's Work together to build something great!!!""",
                            style: TextStyle(
                              fontSize: widthDevice * 0.012,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text("""Say Hello!!""",
                                  style: GoogleFonts.aboreto(
                                    textStyle: TextStyle(
                                      fontSize: widthDevice * 0.03,
                                    ),
                                  )),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ContactPageWeb()));
                                },
                                child: Text(
                                  '⟹',
                                  style: TextStyle(
                                    fontSize: widthDevice * 0.03,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
