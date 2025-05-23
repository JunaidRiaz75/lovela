/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 237, 221),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Center(
                    child: Image.asset(
                  'assets/image1.png',
                  width: 90,
                  height: 163.85,
                )),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'Lovela',
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                    fontSize: 36,
                    color: const Color.fromARGB(255, 120, 22, 33),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 50),
                child: Text(
                  'Find your spark, where love begins with a rose. ',
                  style: GoogleFonts.playfairDisplay(
                      textStyle: TextStyle(
                    fontSize: 20,
                  )),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ));
                },
                child: Container(
                  width: 295,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 120, 22, 33),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      IconButton.filled(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Screen2(),
                          ));
                        },
                        icon: Icon(
                          Icons.call_sharp,
                          color: Color.fromARGB(255, 120, 22, 33),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Text('Login with Phone',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ));
                },
                child: Container(
                  width: 295,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 186, 162, 163),
                      borderRadius: BorderRadius.circular(32)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      IconButton.filled(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Screen2(),
                          ));
                        },
                        icon: Icon(
                          Icons.alternate_email,
                          color: Color.fromARGB(255, 120, 22, 33),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        // fillcolor: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Text('Login with Email',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text('Don’t have an account ? ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text('Sign Up',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 120, 22, 33),
                              ),
                            )))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 46, right: 46),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By signing up for ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w300),
                        ),
                      ),
                      TextSpan(
                        text: 'lovela',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w500),
                        ),
                      ),
                      TextSpan(
                        text:
                            ' you agree to our Terms of Service. Learn how we process your data in our Privacy Policies and Cookies.',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
 
 */
