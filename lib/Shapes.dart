import 'package:flutter/material.dart';
import 'package:flutter_test_03082022/main.dart';
import 'package:google_fonts/google_fonts.dart';

class Shapes extends StatelessWidget {
  const Shapes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color(0xFF06121C),
            appBar: AppBar(
              backgroundColor: const Color(0xFF08252C),
              title:
                  Text('SHAPES', style: GoogleFonts.dmSans(textStyle: style)),
              titleSpacing: 110,
            ),
            drawer: NavigationDrawer(),
            body: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildCardTest(),
              ],
            )));
  }

  Widget buildCardTest() => Card(
    shadowColor: Colors.black,
    elevation: 10,
    color:  const Color(0xFF08252C),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17)
    ),
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(
           title: Text('TEST CARD',
            style: TextStyle(fontSize: 24,color: Colors.white),
           ),
            leading: Icon(Icons.star ,color: Colors.white,),
          ),

        ],
      ),
    ),
  );
}
