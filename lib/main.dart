import 'package:firebase_core/firebase_core.dart';
import 'package:fk_protfolio/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'firebase_options.dart';

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fk_Portfolio',
      theme: ThemeData.dark(),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
