import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/icon_model.dart';
import '../views/icon_view.dart';

// ignore: must_be_immutable
class BusinessCardApp extends StatelessWidget {
  BusinessCardApp({super.key});

  List<LaunchMode> mode = [];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          backgroundColor: Colors.grey,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Text(
            "Business Card",
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        backgroundColor: const Color(0xffd1d3d4),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Center(
            child: Image(
              image: AssetImage('images/4.png'),
              height: 250,
              width: 250,
            ),
          ),
          const Text(
            "Mohamed El Hagrasy",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 30,
              fontFamily: "fonts/OpenSans-ExtraBold.ttf",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: iconOnTap.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 100,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 0),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(left: 35, right: 35),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 194, 194, 194),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconView(
                    model: iconOnTap[index],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// onLaunch(url, {mode = LaunchMode.platformDefault}) async {
//   await launchUrl(
//     Uri.parse(url),
//   );

//   mode;
// }


// child: CircleAvatar(
                //   backgroundColor: Color(0xffd1d3d4),
                //   radius: 100,
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage('images/4.png'),
                //     radius: 150.0,
                //   ),
                // ),

 // Expanded(
            //     child: ListView(children: [
            //   Padding(
            //     padding: const EdgeInsets.only(top: 25),
            //     child: Container(
            //       height: 75,
            //       width: 20,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           IconButton(
            //               icon: const Icon(Icons.facebook),
            //               iconSize: 80,
            //               color: const Color(0xFF111111),
            //               onPressed: () {
            //                 onLaunch('https://www.facebook.com/mo.sayed722',
            //                     mode: mode);
            //               }),
            //           // FaIcon(
            //           //   FontAwesomeIcons.squareFacebook,
            //           //   size: 75,
            //           //   color: Color.fromARGB(255, 17, 17, 17),
            //           // ),
            //           const FaIcon(
            //             FontAwesomeIcons.squareInstagram,
            //             size: 75,
            //             color: Color(0xFF111111),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.only(top: 40),
            //     child: Container(
            //       height: 75,
            //       width: 20,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: const Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           FaIcon(
            //             FontAwesomeIcons.linkedin,
            //             size: 75,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //           ),
            //           FaIcon(
            //             FontAwesomeIcons.twitter,
            //             size: 75,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.only(top: 40),
            //     child: Container(
            //       height: 75,
            //       width: 20,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: const Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           FaIcon(
            //             FontAwesomeIcons.github,
            //             size: 75,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //           ),
            //           FaIcon(
            //             FontAwesomeIcons.file,
            //             size: 75,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.only(top: 40),
            //     child: Container(
            //       height: 75,
            //       width: 20,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: const Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           FaIcon(
            //             FontAwesomeIcons.tikTok, //
            //             size: 75,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //           ),
            //           FaIcon(
            //             FontAwesomeIcons.behance,
            //             size: 75,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ]))