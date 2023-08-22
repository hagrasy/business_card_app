import 'package:business_card_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const BusinessCardApp());
}

// ignore: must_be_immutable
class BusinessCardApp extends StatefulWidget {
  const BusinessCardApp({super.key});

  @override
  State<BusinessCardApp> createState() => _BusinessCardAppState();
}

class _BusinessCardAppState extends State<BusinessCardApp> {
  List<LaunchMode> modeList = [];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffd1d3d4),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
                width: 300,
                height: 250,
                child: Image(image: AssetImage('images/4.png'))
                // child: CircleAvatar(
                //   backgroundColor: Color(0xffd1d3d4),
                //   radius: 100,
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage('images/4.png'),
                //     radius: 150.0,
                //   ),
                // ),
                ),
            const Text(
              "Mohamed El Hagrasy",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 35,
                fontFamily: "fonts/OpenSans-ExtraBold.ttf",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 75,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Icon(Icons.facebook),
                          iconSize: 80,
                          color: Color(0xFF111111),
                          onPressed: () {
                            onLaunch('https://www.facebook.com/mo.sayed722',
                                mode: mode);
                          }),
                      // FaIcon(
                      //   FontAwesomeIcons.squareFacebook,
                      //   size: 75,
                      //   color: Color.fromARGB(255, 17, 17, 17),
                      // ),
                      FaIcon(
                        FontAwesomeIcons.squareInstagram,
                        size: 75,
                        color: Color(0xFF111111),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 75,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 75,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 75,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 75,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github,
                        size: 75,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                      FaIcon(
                        FontAwesomeIcons.file,
                        size: 75,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 75,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tiktok, //
                        size: 75,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                      FaIcon(
                        FontAwesomeIcons.behance,
                        size: 75,
                        color: Color.fromARGB(255, 17, 17, 17),
                      ),
                    ],
                  ),
                ),
              ),
            ]))
          ]),
        ),
      ),
    );
  }
}

onLaunch(url, {mode = LaunchMode.platformDefault}) async {
  await launchUrl(
    Uri.parse(url),
  );

  mode:
  mode;
}
