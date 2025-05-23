import 'package:flutter/material.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/forgotpin.dart';
import 'package:lovela/hithere.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/newscr1.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  bool isButtonEnabled = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    for (final controller in _controllers) {
      controller.addListener(_checkAllFieldsFilled);
    }
  }

  void _checkAllFieldsFilled() {
    final allFilled =
        _controllers.every((controller) => controller.text.isNotEmpty);
    setState(() {
      isButtonEnabled = allFilled;
    });
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
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
                            builder: (context) => Forgotpin(),
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
                          builder: (context) => Forgotpin(),
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
              SizedBox(height: 78),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 45),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Phone Verification',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: AppColors.bgDarkest,
                          fontFamily: 'roboto')),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text('Please enter the 4-digit code send to you at',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.b,
                        fontFamily: 'roboto')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('+61  44 535 235',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.b,
                          fontFamily: 'roboto')),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 34),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Resend Code',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.b,
                          fontFamily: 'roboto')),
                ),
              ),
              SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 40,
                      height: 36,
                      child: TextFormField(
                        controller: _controllers[index],
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.deepRed),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.deepRed, width: 1.0),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.deepRed, width: 1.0),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty && index < 5) {
                            FocusScope.of(context).nextFocus();
                          } else if (value.isEmpty && index > 0) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 74),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 32),
                child: CustomButton(
                  text: '             Next',
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
                        builder: (context) => Hithere(),
                      ));
                    } else {
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
