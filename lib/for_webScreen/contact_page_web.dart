import 'package:fk_protfolio/Reusable_code/components.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ContactPageWeb extends StatefulWidget {
  const ContactPageWeb({super.key});

  @override
  State<ContactPageWeb> createState() => _ContactPageWebState();
}

class _ContactPageWebState extends State<ContactPageWeb> {
  var logger = Logger();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _descriptioncontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerReusable(),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 600,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/contactfinal.png',
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
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
            body: SingleChildScrollView(
                child: Form(
              key: _formkey,
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Contact me',
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Row(
                          children: [
                            TextFormReusable(
                                Validator: (text) {
                                  if (text.toString().isEmpty) {
                                    return 'First name is required';
                                  }
                                },
                                Controller: _namecontroller,
                                maxline: 1,
                                prefixIcon: Icon(Icons.person),
                                heading: 'Name',
                                width: 350),
                            SizedBox(
                              width: 10,
                            ),
                            TextFormReusable(
                                Validator: (text) {
                                  if (text.toString().isEmpty) {
                                    return '@mail is required';
                                  }
                                },
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
                            Validator: (text) {
                              if (text.toString().isEmpty) {
                                return 'Some description is required';
                              }
                            },
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
                            ))
                      ])
                    ])
              ]),
            ))));
  }
}
