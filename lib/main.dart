import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './welcome_page.dart';
// import './SignupPage.dart';
// import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),
      ),
      home: const WelcomePage(),
    );
  }
}
