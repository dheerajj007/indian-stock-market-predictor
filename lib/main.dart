import 'package:flutter/material.dart';
import 'package:indian_stock_market_predictor/pages/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Indian Stock Market Predictor",
      home: HomePage(),
      theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
    );
  }
}
