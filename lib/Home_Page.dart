import 'package:flutter/material.dart';
import 'package:flutter_test_03082022/main.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFF06121C),
          appBar: AppBar(
            backgroundColor: const Color(0xFF08252C),
            title:  Text('HOME',
                style: GoogleFonts.dmSans(textStyle:style)),

            titleSpacing: 115,
          ),
          drawer: NavigationDrawer(),
        ));
  }

}
