import 'package:design/LogInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import 'SlideLeftRoute.dart';

class LogInSignUpPage extends StatefulWidget {
  const LogInSignUpPage({super.key});

  @override
  State<LogInSignUpPage> createState() => _LogInSignUpPageState();
}

class _LogInSignUpPageState extends State<LogInSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, bottom: 20),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black, // Text color to black
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .55,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        color: Colors.white, // Changed to white
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // Changes position of shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 22, top: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),

                            ),
                            Text(
                              'Did not have an account?',
                              style: TextStyle(color: Colors.black, fontSize: 10)
                            ),
                            Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(
                        context,
                        SlideLeftRoute(page: LogInPage()),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .55,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        color: Colors.black, // Changed to black
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [

                            Padding(
                              padding: EdgeInsets.only(bottom: 8, top: 8),
                              child: Text(
                                'Returning?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8, top: 8),
                              child: Text(
                                'Just Sign In to resume what you are doing',
                                style: TextStyle(color: Colors.white, fontSize: 10),

                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8, top: 8),
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/61/61109.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://e7.pngegg.com/pngimages/884/642/png-clipart-logo-facebook-inc-round-logo-desktop-wallpaper-black-and-white.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
