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
          backgroundColor: const Color(0xFF261041),
          body: Container(
              child: Column(
            children: [
              Headline(),
              Headlinetwo(),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Headlinethree(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ShapesCard(),
                  DrawYourselfCard(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                SelfDrawnShapesCard()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  AboutUsCard()
                ],
                ),
            ],
          )),
          appBar: AppBar(
            backgroundColor: const Color(0xFF08252C),
          ),
          drawer: NavigationDrawer(),
        ));
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        'C.L.T',
        textAlign: TextAlign.center,
        style: GoogleFonts.inriaSans(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
      ),
    ));
  }
}

class Headlinetwo extends StatelessWidget {
  const Headlinetwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        'Controllable Laser Turret',
        textAlign: TextAlign.center,
        style: GoogleFonts.inriaSans(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
      ),
    ));
  }
}

class Headlinethree extends StatelessWidget {
  const Headlinethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: Text(
            'A Project by ',
            textAlign: TextAlign.center,
            style: GoogleFonts.inriaSans(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          child: Text(
            'Sebastian Peternuss &',
            textAlign: TextAlign.center,
            style: GoogleFonts.inriaSans(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          child: Text(
            'Tony Monsberger',
            textAlign: TextAlign.center,
            style: GoogleFonts.inriaSans(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}

class ShapesCard extends StatefulWidget {
  const ShapesCard({Key? key}) : super(key: key);

  @override
  State<ShapesCard> createState() => _ShapesCardState();
}

class _ShapesCardState extends State<ShapesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 175,
      child: Card(
        shadowColor: Colors.black,
        elevation: 10,
        color: const Color(0xB3150825),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Container(
                width: 117,
                height: 131,
                child: Card(
                    color: Color(0xFF5B22A5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.format_shapes,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          'Shapes',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inriaSans(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawYourselfCard extends StatefulWidget {
  const DrawYourselfCard({Key? key}) : super(key: key);

  @override
  State<DrawYourselfCard> createState() => _DrawYourselfCardState();
}

class _DrawYourselfCardState extends State<DrawYourselfCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 175,
      child: Card(
        shadowColor: Colors.black,
        elevation: 10,
        color: const Color(0xB3150825),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Container(
                width: 117,
                height: 131,
                child: Card(
                    color: Color(0xFF5B22A5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.draw,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          'Draw Yourself',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inriaSans(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class SelfDrawnShapesCard extends StatefulWidget {
  const SelfDrawnShapesCard({Key? key}) : super(key: key);

  @override
  State<SelfDrawnShapesCard> createState() => _SelfDrawnShapesCardState();
}

class _SelfDrawnShapesCardState extends State<SelfDrawnShapesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 122,
      child: Card(
        shadowColor: Colors.black,
        elevation: 10,
        color: const Color(0xB3150825),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Container(
                    width: 258,
                    height: 90,
                    child: Card(
                        color: Color(0xFF5B22A5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.image,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Shapes',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inriaSans(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsCard extends StatefulWidget {
  const AboutUsCard({Key? key}) : super(key: key);

  @override
  State<AboutUsCard> createState() => _AboutUsCardState();
}

class _AboutUsCardState extends State<AboutUsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 122,
      child: Card(
        shadowColor: Colors.black,
        elevation: 10,
        color: const Color(0xB3150825),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Container(
                    width: 258,
                    height: 90,
                    child: Card(
                        color: Color(0xFF5B22A5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'About Us',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inriaSans(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
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
