import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'About_Us.dart';
import 'Home_Page.dart';
import 'Shapes.dart';
import 'Draw.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFF06121C),
          appBar: AppBar(
            backgroundColor: const Color(0xFF08252C),
            title: const Text('CTL - Controllable Laser Turret',
                style: TextStyle()),
            titleSpacing: 57,
          ),
          drawer: NavigationDrawer(),
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          color: const Color(0xFF06121C),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: const Color(0xFF06121C),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: ClipRRect(
          child: Image.asset('images/LogoV4.png'),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          const Divider(
            color: Colors.white,
          ),
          ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xFFF9004D),
                size: 35,
              ),
              title: Text('Home',
                  style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          color: Color(0xFFF9004D), fontSize: 20))),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              }),
          ListTile(
              leading: const Icon(
                Icons.format_shapes,
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                'Shapes',
                style: GoogleFonts.dmSans(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 20)),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Shapes()));
              }),
          ListTile(
              leading: const Icon(
                Icons.draw_outlined,
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                'Draw',
                style: GoogleFonts.dmSans(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 20)),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Draw()));
              }),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
              leading: const Icon(
                Icons.contact_support_outlined,
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                'About Us',
                style: GoogleFonts.dmSans(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 20)),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutUs()));
              }),
        ],
      ));
}
