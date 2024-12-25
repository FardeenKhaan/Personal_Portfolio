import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsView extends StatefulWidget {
  final String title;
  final String route;
  TabsView({super.key, required this.title, required this.route});

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  bool isSelected = false;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
          onEnter: (_) {
            setState(() {
              isSelected = true;
            });
          },
          onExit: (_) {
            setState(() {
              isSelected = false;
            });
          },
          child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 100),
              curve: Curves.elasticIn,
              style: isSelected
                  ? GoogleFonts.oswald(
                      shadows: [
                        Shadow(color: Colors.transparent, offset: Offset(0, -8))
                      ],
                      fontSize: 25.0,
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationColor: Colors.purple.shade900,
                    )
                  : GoogleFonts.oswald(color: Colors.black, fontSize: 25.0),
              child: Text(
                '${widget.title}',
                style: TextStyle(color: Colors.white70, fontSize: 25.0),
              ))),
    );
  }
}

class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          CircleAvatar(
            radius: 158.0,
            child: CircleAvatar(
                radius: 155.0,
                // maxRadius: 140,
                backgroundColor: Colors.black,
                child: Image.asset(
                  'assets/logo_circle.png',
                  filterQuality: FilterQuality.high,
                )),
          ),
        ],
      ),
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCard(
      {Key? key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width})
      : super(key: key);

  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 300.0 : widget.height,
                width: widget.width == null ? 300.0 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              widget.text == null
                  ? SizedBox()
                  : Text(
                      widget.text,
                      style: TextStyle(fontSize: 15.0),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormReusable extends StatefulWidget {
  final heading;
  final double width;
  final hitText;
  final maxline;
  final Icon prefixIcon;
  final Controller;
  final Validator;
  TextFormReusable({
    Key? key,
    @required this.maxline,
    required this.prefixIcon,
    required this.heading,
    required this.width,
    this.hitText,
    this.Validator,
    required this.Controller,
  }) : super(key: key);

  @override
  State<TextFormReusable> createState() => _TextFormReusableState();
}

class _TextFormReusableState extends State<TextFormReusable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: widget.width,
          child: Theme(
            data: ThemeData(
                textSelectionTheme: TextSelectionThemeData(
                    selectionColor: const Color.fromARGB(255, 95, 109, 121))),
            child: TextFormField(
              validator: widget.Validator,
              controller: widget.Controller,
              inputFormatters: [
                LengthLimitingTextInputFormatter(500),
                // FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9]'))
              ],
              maxLines: widget.maxline,
              cursorColor: Colors.black54,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.purple.shade900, width: 4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                  border: InputBorder.none,
                  fillColor: Colors.white70,
                  prefixIconColor: Colors.black,
                  prefixIcon: SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.prefixIcon,
                      ],
                    ),
                  ),
                  hintText: widget.heading,
                  hintStyle: TextStyle(color: Colors.black)),
              // validator: (text) {
              //   if (RegExp('\\fardeen\\b', caseSensitive: false)
              //       .hasMatch(text.toString())) {
              //     return 'Match found';
              //   }
              // },
              // autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagepath;
  final text;
  final fit;
  final reverse;
  const AnimatedCardWeb(
      {super.key,
      required this.imagepath,
      required this.text,
      required this.fit,
      required this.reverse});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 4))
        ..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.imagepath,
              height: heightDevice * 0.4,
              width: widthDevice * 0.3,
              fit: widget.fit,
            ),
            Text(
              widget.text,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        shadowColor: Colors.purple.shade900,
      ),
    );
  }
}

class AnimatedCardMob extends StatefulWidget {
  final imagepath;
  final text;
  final fit;
  final reverse;
  const AnimatedCardMob(
      {super.key,
      required this.imagepath,
      required this.text,
      required this.fit,
      required this.reverse});

  @override
  State<AnimatedCardMob> createState() => _AnimatedCardMobState();
}

class _AnimatedCardMobState extends State<AnimatedCardMob>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 4))
        ..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0.02, 0) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0.02, 0),
  ).animate(_controller);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.imagepath,
              height: heightDevice * 0.40,
              width: widthDevice * 0.9,
              fit: widget.fit,
            ),
            Text(
              widget.text,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        shadowColor: Colors.purple.shade900,
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final String text;
  final String route;
  const TabsMobile({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(widget.text,
          style: TextStyle(fontSize: 20.0, color: Colors.white)),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class DrawerReusable extends StatefulWidget {
  const DrawerReusable({super.key});

  @override
  State<DrawerReusable> createState() => _DrawerReusableState();
}

class _DrawerReusableState extends State<DrawerReusable> {
  UrlLauncher(String imagepath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imagepath,
        // color: Color,\/
        width: 35.0,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: widthDevice * 0.099,
            backgroundColor: Colors.purple.shade900,
            child: CircleAvatar(
              radius: widthDevice * 0.095,
              backgroundColor: Colors.black54,
              child: CircleAvatar(
                radius: widthDevice * 0.09,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(
                  'assets/logo_circle.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text('Fardeen Khan', style: TextStyle(fontSize: 30.0)),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UrlLauncher('assets/icons8-github.svg',
                  'https://github.com/FardeenKhaan'),
              UrlLauncher(
                  'assets/icons8-twitterx.svg', 'https://x.com/KhaanFardeen1'),
              UrlLauncher('assets/icons8-linkedin-logo.svg',
                  'https://linkedin.com/in/fardeenkhan51'),
              UrlLauncher('assets/instagram2.svg',
                  'https://www.instagram.com/fardeenkhaan70/')
            ],
          )
        ],
      ),
    );
  }
}

class ProjectRow extends StatelessWidget {
  final String projectUrl;
  final String projectUrl1;
  ProjectRow({super.key, required this.projectUrl, required this.projectUrl1});

  // Function to launch the URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Parse the URL
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      children: [
        Container(
          height: heightDevice * 0.06,
          width: widthDevice * 0.077,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.purple.shade900, width: 3),
            color: Colors.transparent,
          ),
          child: MaterialButton(
            onPressed: () {
              _launchURL(projectUrl);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text('Code'),
          ),
        ),
        Container(
          height: heightDevice * 0.06,
          width: widthDevice * 0.077,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.purple.shade900, width: 3),
            color: Colors.transparent,
          ),
          child: MaterialButton(
            onPressed: () {
              _launchURL(projectUrl1);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Demo',
            ),
          ),
        ),
      ],
    );
  }
}

class ForResumeCv extends StatelessWidget {
  final String ResumeCvURL;
  const ForResumeCv({super.key, required this.ResumeCvURL});
  // Function to launch the URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Parse the URL
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      children: [
        Container(
          height: heightDevice * 0.06,
          width: widthDevice < 800
              ? widthDevice * 0.30 // For mobile
              : widthDevice * 0.20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.purple.shade900, width: 3),
            color: Colors.black,
          ),
          child: MaterialButton(
            onPressed: () {
              _launchURL(ResumeCvURL);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Text('Download Resume')),
          ),
        ),
      ],
    );
  }
}

class ProjectRowMob extends StatelessWidget {
  final String projectUrl;
  final String projectUrl1;
  ProjectRowMob(
      {super.key, required this.projectUrl, required this.projectUrl1});

  // Function to launch the URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Parse the URL
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      children: [
        Container(
          height: heightDevice * 0.06,
          width: widthDevice * 0.20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.purple.shade900, width: 3),
            color: Colors.transparent,
          ),
          child: MaterialButton(
            onPressed: () {
              _launchURL(projectUrl);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Text('Code')),
          ),
        ),
        Container(
          height: heightDevice * 0.06,
          width: widthDevice * 0.20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.purple.shade900, width: 3),
            color: Colors.transparent,
          ),
          child: MaterialButton(
            onPressed: () {
              _launchURL(projectUrl1);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Demo',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectLinks extends StatefulWidget {
  const ProjectLinks({super.key});

  @override
  State<ProjectLinks> createState() => _ProjectLinksState();
}

class _ProjectLinksState extends State<ProjectLinks> {
  UrlLauncher(String url) {
    return MaterialButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Row(
      spacing: 20,
      children: [
        Container(
          height: heightDevice * 0.06,
          width: widthDevice * 0.07,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.purple.shade900),
            color: Colors.transparent,
          ),
          child: MaterialButton(
            onPressed: () {
              UrlLauncher('https://github.com/FardeenKhaan');
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text('Code'),
          ),
        )
      ],
    );
  }
}

class AppbarReusable extends StatelessWidget implements PreferredSizeWidget {
  const AppbarReusable({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MobDrawerReusable extends StatefulWidget {
  const MobDrawerReusable({super.key});

  @override
  State<MobDrawerReusable> createState() => _MobDrawerReusableState();
}

class _MobDrawerReusableState extends State<MobDrawerReusable> {
  UrlLauncher(String imagepath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imagepath,
        // color: Color,\/
        width: 35.0,
      ),
      tooltip: 'Open link',
      onPressed: () async {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          print('Could not launch $url');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: widthDevice * 0.185,
            backgroundColor: Colors.purple.shade900,
            child: CircleAvatar(
              radius: widthDevice * 0.18,
              backgroundColor: Colors.black54,
              child: CircleAvatar(
                radius: widthDevice * 0.17,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(
                  'assets/logo_circle.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Fardeen Khan',
            style: TextStyle(fontSize: 30.0),
          ),
          SizedBox(
            height: 30,
          ),
          TabsMobile(text: 'Home', route: '/'),
          Divider(
            indent: 35, // Start offset from the left
            endIndent: 35,
          ),
          TabsMobile(text: 'Works', route: '/Works'),
          Divider(
            indent: 35, // Start offset from the left
            endIndent: 35,
          ),
          TabsMobile(text: 'About', route: '/About'),
          Divider(
            indent: 35, // Start offset from the left
            endIndent: 35,
          ),
          TabsMobile(text: 'Contact', route: '/Contact'),
          Divider(
            indent: 35, // Start offset from the left
            endIndent: 35,
            thickness: 2,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UrlLauncher('assets/icons8-github.svg',
                  'https://github.com/FardeenKhaan'),
              UrlLauncher(
                  'assets/icons8-twitterx.svg', 'https://x.com/KhaanFardeen1'),
              UrlLauncher('assets/icons8-linkedin-logo.svg',
                  'https://linkedin.com/in/fardeenkhan51'),
              UrlLauncher('assets/instagram2.svg',
                  'https://www.instagram.com/fardeenkhaan70/')
            ],
          )
        ],
      ),
    );
  }
}

class AddDataFirestore {
  var logger = Logger();
  CollectionReference response =
      FirebaseFirestore.instance.collection('messages');
  Future<void> addResponse(final name, final email, final description) async {
    return response
        .add({
          "name": name,
          "email": email,
          "description": description,
        })
        .then((value) => logger.d("Success"))
        .catchError((error) => logger.d(error));
  }
}

Future DialogError(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: Center(
              child: Text(
                'Response Submitted',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ));
}
