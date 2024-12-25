import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorksPageMob extends StatefulWidget {
  const WorksPageMob({super.key});

  @override
  State<WorksPageMob> createState() => _WorksPageMobState();
}

class _WorksPageMobState extends State<WorksPageMob> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: MobDrawerReusable(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // pinned: true,
              // floating: false,
              automaticallyImplyLeading: false,
              expandedHeight: 600,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/workcan.png',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ];
        },
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Work',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  Divider(
                    indent: 65,
                    endIndent: 65,
                    thickness: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      spacing: 20,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Portfolio',
                              style: GoogleFonts.abel(
                                  fontSize: widthDevice * 0.06),
                            ),
                            Text(
                              'Deployed on Android, iOS, and Web, the portfolio project was\ntruly an achievement. I used Flutter to develop the beautiful\nand responsive UI and Firebase for the back-end.',
                              style: TextStyle(fontSize: widthDevice * 0.02),
                            )
                          ],
                        ),
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
                        ProjectRowMob(
                          projectUrl:
                              'https://github.com/FardeenKhaan/Personal_Portfolio',
                          projectUrl1:
                              'https://www.loom.com/share/c8fd7c086aed4a679235dce70a1a1de3',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              indent: 65,
              endIndent: 65,
              thickness: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'RhythmPulse',
                  style: GoogleFonts.abel(fontSize: widthDevice * 0.06),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Built with Flutter, it features a\nbeautiful and responsive UI, allowing users to explore\nvarious sounds at the touch of a button.',
                  style: TextStyle(fontSize: widthDevice * 0.02),
                )
              ],
            ),
            Container(
              child: Column(
                spacing: 30,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
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
                        ProjectRowMob(
                          projectUrl:
                              'https://github.com/FardeenKhaan/Flutter-AudioSound_App',
                          projectUrl1:
                              'https://github.com/FardeenKhaan/Flutter-AudioSound_App',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              indent: 65,
              endIndent: 65,
              thickness: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'StyleStep',
                  style: GoogleFonts.abel(fontSize: widthDevice * 0.06),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Developed the ShoesApp with a clean and intuitive UI,\nallowing users to explore a variety of shoes on the main screen.\nUpon selecting a shoe, users can view detailed descriptions,\nproviding a seamless browsing experience.",
                  style: TextStyle(fontSize: widthDevice * 0.02),
                )
              ],
            ),
            Container(
              child: Column(
                spacing: 30,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
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
                        ProjectRowMob(
                          projectUrl:
                              'https://github.com/FardeenKhaan/Flutter_Shoes-App?tab=readme-ov-file',
                          projectUrl1:
                              'https://github.com/FardeenKhaan/Flutter_Shoes-App?tab=readme-ov-file',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
