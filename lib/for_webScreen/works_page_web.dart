import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorksPageWeb extends StatefulWidget {
  const WorksPageWeb({super.key});

  @override
  State<WorksPageWeb> createState() => _WorksPageWebState();
}

class _WorksPageWebState extends State<WorksPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: DrawerReusable(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 600,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/workcan.png',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
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
              )
            ];
          },
          body: ListView(
            children: [
              Container(
                height: heightDevice - 57,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Work',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          spacing: 20,
                          children: [
                            Container(
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
                                    offset: Offset(0, 3),
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
                                      'assets/project1.PNG',
                                      height: 300,
                                      width: 500,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ProjectRow(
                              projectUrl:
                                  'https://github.com/FardeenKhaan/Personal_Portfolio',
                              projectUrl1:
                                  'https://www.loom.com/share/c8fd7c086aed4a679235dce70a1a1de3',
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Portfolio',
                              style: GoogleFonts.abel(
                                  fontSize: widthDevice * 0.03),
                            ),
                            Text(
                              'Deployed on Android, iOS, and Web, the portfolio project was\ntruly an achievement. I used Flutter to develop the beautiful\nand responsive UI and Firebase for the back-end.',
                              style: TextStyle(fontSize: widthDevice * 0.013),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Divider(
                      indent: 35,
                      endIndent: 35,
                      thickness: 5,
                    ),
                  ],
                ),
              ),
              Container(
                height: heightDevice - 97,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          spacing: 20,
                          children: [
                            Container(
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
                                    offset: Offset(0, 3),
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
                                      'assets/music.png',
                                      height: 300,
                                      width: 500,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ProjectRow(
                              projectUrl:
                                  'https://github.com/FardeenKhaan/Flutter-AudioSound_App',
                              projectUrl1:
                                  'https://github.com/FardeenKhaan/Flutter-AudioSound_App',
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'RhythmPulse',
                              style: GoogleFonts.abel(
                                  fontSize: widthDevice * 0.03),
                            ),
                            Text(
                              'Built with Flutter, it features a\nbeautiful and responsive UI, allowing users to explore\nvarious sounds at the touch of a button.',
                              style: TextStyle(fontSize: widthDevice * 0.013),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Divider(
                      indent: 35,
                      endIndent: 35,
                      thickness: 5,
                    ),
                  ],
                ),
              ),
              Container(
                height: heightDevice * 1.12,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          spacing: 20,
                          children: [
                            Container(
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
                                    offset: Offset(0, 3),
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
                                      'assets/shoesUI.png',
                                      height: 300,
                                      width: 500,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ProjectRow(
                              projectUrl:
                                  'https://github.com/FardeenKhaan/Flutter_Shoes-App',
                              projectUrl1:
                                  'https://github.com/FardeenKhaan/Flutter_Shoes-App',
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'StyleStep',
                              style: GoogleFonts.abel(
                                  fontSize: widthDevice * 0.03),
                            ),
                            Text(
                              "Developed the ShoesApp with a clean and intuitive UI,\nallowing users to explore a variety of shoes on the main screen.\nUpon selecting a shoe, users can view detailed descriptions,\nproviding a seamless browsing experience.",
                              style: TextStyle(fontSize: widthDevice * 0.013),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
