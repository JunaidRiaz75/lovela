import 'package:flutter/material.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/forgotpin.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool isButtonEnabled = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    emailController.addListener(_validateFields);
    usernameController.addListener(_validateFields);
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  void _validateFields() {
    final email = emailController.text;
    final username = usernameController.text;

    final isValid = _isValidEmail(email) && username.isNotEmpty;

    setState(() {
      isButtonEnabled = isValid;
      errorMessage = isValid ? null : "Please fill in all fields correctly";
    });
  }

  bool _isValidEmail(String email) {
    final emailRegex =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 35,
                        )),
                    SizedBox(width: 220),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Signup(),
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                              18, 18, 29, 0.2), // background color
                          shape: BoxShape.circle, // or BoxShape.rectangle
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.black, // icon color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 62),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Welcome',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: AppColors.bgDarkest,
                          fontFamily: 'roboto')),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 40),
                child: Text('Sign up with Social of fill the form to continue.',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.b,
                        fontFamily: 'roboto')),
              ),
              SizedBox(height: 72),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Divider(
                  color: Colors.grey, // You can change the color
                  thickness: 1, // Line thickness
                ),
              ),
              SizedBox(height: 28), // Space after the divider

              EmailTextField(
                width: 290,
                controller: emailController,
                hintText: 'Email',
                prefixIcon: Icon(Icons.mail_outline, color: Colors.black87),
              ),
              SizedBox(height: 10),
              EmailTextField(
                width: 290,
                controller: usernameController,
                hintText: 'Name',
                prefixIcon: Icon(Icons.person, color: Colors.black87),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 95),
                child: Text('At least 8 characters, 1 uppercase letter ',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(18, 18, 29, 0.3),
                        fontFamily: 'roboto')),
              ),
              SizedBox(height: 39),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/checkOff.png',
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          'Remember me next time',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(18, 18, 29, 0.6),
                            fontFamily: 'roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Image.asset('assets/twitter.png'),
                    SizedBox(width: 16),
                    Image.asset('assets/facebook.png'),
                    SizedBox(width: 16),
                    Image.asset('assets/apple.png'),
                  ],
                ),
              ),
              SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 32),
                child: CustomButton(
                  text: '             Sign In',
                  textColor: Colors.white,
                  textstyle: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  backgroundColor: isButtonEnabled
                      ? AppColors.deepRed
                      : Colors.grey.shade400,
                  onPressed: () {
                    if (isButtonEnabled) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Forgotpin(),
                      ));
                    } else {
                      // Show error message or handle disabled button state
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text(errorMessage ?? "Please fill in all fields"),
                        duration: Duration(seconds: 2),
                      ));
                    }
                  },
                  style: const TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
