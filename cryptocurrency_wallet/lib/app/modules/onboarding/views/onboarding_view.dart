import 'package:cryptocurrency_wallet/app/modules/onboarding/views/widgets/onboarding_elements.dart';
import 'package:cryptocurrency_wallet/app/modules/welcome/views/welcome_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController(initialPage: 0);
  Color currentPageColor = const Color(0xff52AA82);
  Color page1Color = const Color(0xff52AA82);
  Color page2Color = Colors.grey.withOpacity(.6);
  Color page3Color = Colors.grey.withOpacity(.6);
  onboardingPageNavigator() {
    setState(
      () {
        if (pageController.positions.isNotEmpty) {
          if (pageController.page == 2.0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Welcome(),
              ),
            );
          } else {
            if (pageController.page == 0.0 - 1) {
              page1Color = currentPageColor;
            } else {
              page1Color = Colors.grey.withOpacity(.6);
            }

            if (pageController.page == 1.0 - 1) {
              page2Color = currentPageColor;
            } else {
              page2Color = Colors.grey.withOpacity(.6);
            }

            if (pageController.page == 2.0 - 1) {
              page3Color = currentPageColor;
            } else {
              page3Color = Colors.grey.withOpacity(.6);
            }

            pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOutCirc,
            );
          }
        }
      },
    );
  }

  @override
  void initState() {
    onboardingPageNavigator();
    super.initState();
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print("Dispose Called");
    }
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: page1Color,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: page2Color,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: page3Color,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: screen.height * .4,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        OnboardingCard(
                          context,
                          assetUrl: 'banner4.png',
                          text: "Accept payments",
                          desc:
                              "Receive crypto payments from your customers. Get paid the way you choose.",
                          onPressed: () => onboardingPageNavigator(),
                        ),
                        OnboardingCard(
                          context,
                          assetUrl: 'banner1.png',
                          text: "Swift Transactions",
                          desc:
                              "Businesses and merchants can enjoy fast transactions at the lowest fees in the market.",
                          onPressed: () => onboardingPageNavigator(),
                        ),
                        OnboardingCard(
                          context,
                          assetUrl: 'banner2.png',
                          text: "Global Payout",
                          desc:
                              "Don’t just get paid, easily withdraw your earnings whenever you want it to a preferred crypto wallet or bank account.",
                          onPressed: () => onboardingPageNavigator(),
                        ),
                      ],
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