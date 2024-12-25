import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ContactPageMob extends StatefulWidget {
  const ContactPageMob({super.key});

  @override
  State<ContactPageMob> createState() => _ContactPageMobState();
}

class _ContactPageMobState extends State<ContactPageMob> {
  var logger = Logger();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _descriptioncontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MobDrawerReusable(),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  // pinned: true,
                  // floating: false,
                  automaticallyImplyLeading: false,
                  expandedHeight: 600,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/contactfinal.png',
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ];
            },
            body: ListView(
              children: [
                Form(
                  key: _formkey,
                  child: Column(
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
                      SizedBox(
                        width: 10,
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
                          width: MediaQuery.of(context).size.width * 0.92),
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
            )));
  }
}
