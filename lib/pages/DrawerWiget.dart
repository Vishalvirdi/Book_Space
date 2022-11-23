import 'package:book_spaces/constant.dart';
import 'package:book_spaces/pages/Aboutpage.dart';
import 'package:book_spaces/pages/DonateBooks.dart';
import 'package:book_spaces/pages/Donationpage.dart';
import 'package:book_spaces/pages/Getbooks.dart';
import 'package:book_spaces/pages/Help.dart';
import 'package:book_spaces/pages/Home_Screen.dart';
import 'package:book_spaces/pages/SignUp.dart';
import 'package:book_spaces/services/Auth_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawers extends StatefulWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: mBackgroundColor,
            height: MediaQuery.of(context).size.height / 3,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 65,
                  ),
                  Text(
                    "Hello Vishal !!",
                    style: GoogleFonts.roboto(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Welcome To The Book Space",
                    style: GoogleFonts.alice(
                      fontSize: 22,
                      color: mCard,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(24),
              color: mCard,
              child: Wrap(
                runSpacing: 10,
                children: [
                  ListTile(
                      leading: const Icon(Icons.home_outlined),
                      title: const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => HomeScreen()),
                            (route) => false);
                      }),
                  ListTile(
                      leading: const Icon(Icons.more),
                      title: const Text(
                        'About',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => AboutPage()),
                            (route) => false);
                      }),
                  // ListTile(
                  //   leading: const Icon(Icons.book),
                  //   title: const Text(
                  //     'Donate Books',
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  //   onTap: () {
                  //     Navigator.pushAndRemoveUntil(
                  //         context,
                  //         MaterialPageRoute(builder: (builder) => DonateBook()),
                  //         (route) => false);
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.book_online),
                  //   title: const Text(
                  //     'Get Books',
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 20,
                  //     ),
                  //   ),
                  //   onTap: () {
                  //     Navigator.pushAndRemoveUntil(
                  //         context,
                  //         MaterialPageRoute(builder: (builder) => GetBook()),
                  //         (route) => false);
                  //   },
                  // ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (builder) => HelpPage()),
                          (route) => false);
                    },
                  ),
                  const Divider(color: Colors.black, thickness: 1),
                  ListTile(
                    leading: const Icon(Icons.currency_rupee),
                    title: const Text(
                      'Donation',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (builder) => Donation()),
                          (route) => false);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text(
                      'LogOut',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () async {
                      AuthClass authClass = AuthClass();
                      await authClass.logout();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (builder) => SignUpPage()),
                          (route) => false);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
