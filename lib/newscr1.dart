import 'package:flutter/material.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/signup.dart';

class Newscr1 extends StatefulWidget {
  const Newscr1({super.key});

  @override
  State<Newscr1> createState() => _Newscr1State();
}

class _Newscr1State extends State<Newscr1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 110,
            ),
            child: Image.asset(
              'assets/heartimg.png',
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height * 0.5
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 385, left: 20),
            child: Text('Lovela',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 120, 22, 33),
                    fontFamily: 'Poppins')),
          ),
          Column(
            children: [
              Center(
                  child: Image.asset('assets/backimage.png',
                      width: MediaQuery.of(context).size.width, height: 450)),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Text('Find your spark, where love begins with a rose. ',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF323232),
                        fontFamily: 'Poppins')),
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                text: 'Join with email address',
                textColor: Colors.white,
                textstyle: Text('Join with email address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    )),
                backgroundColor: AppColors.deepRed,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Signup(),
                  ));
                  // Add navigation or functionality here
                },
                style: TextStyle(),
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                text: 'Join with phone number',
                textColor: Colors.white,
                textstyle: Text('Join with phone number',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    )),
                backgroundColor: AppColors.deepRed,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Signup(),
                  ));
                  // Add navigation or functionality here
                },
                style: TextStyle(),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text('Already have an account? ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFF323232),
                            fontFamily: 'SF Pro Text')),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
