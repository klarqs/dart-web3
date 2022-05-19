import 'package:cryptocurrency_wallet/app/modules/onboarding/views/widgets/onboarding_elements.dart';
import 'package:cryptocurrency_wallet/app/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF6C4AED),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 36.0),
          height: screen.height,
          width: screen.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'apace',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 8.0,
                    ),
                    child: RobText(
                      'Welcome to your crypto mobile bank',
                      style: GoogleFonts.dmSans(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFFFFFFFF),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  WelcomeCard(
                    context,
                    onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      ),
                    },
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
