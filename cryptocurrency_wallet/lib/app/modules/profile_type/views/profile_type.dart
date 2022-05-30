import 'package:cryptocurrency_wallet/app/components/spaces_widget.dart';
import 'package:cryptocurrency_wallet/app/constants/colors.dart';
import 'package:cryptocurrency_wallet/app/modules/dashboard_bottom_tabs/views/dashboard_bottom_tabs_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/custom_text_button.dart';
import '../../onboarding/views/widgets/onboarding_elements.dart';

class ProfileType extends StatefulWidget {
  const ProfileType({Key? key}) : super(key: key);

  @override
  State<ProfileType> createState() => _ProfileTypeState();
}

class _ProfileTypeState extends State<ProfileType> {
  String selectedProfileType = 'Individual/Creator';

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: screen.height,
          width: screen.width,
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 24.0),
                  RobText(
                    'Select Profile',
                    style: GoogleFonts.dmSans(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF12141F),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: RobText(
                      'What type of business do you own?',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF666669),
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    profileCard(
                      title: 'Individual/Creator',
                      description:
                          'I run my business personally and want to reach a global audience with Apace.',
                    ),
                    profileCard(
                      title: 'Registered Business',
                      description:
                          'I own a legally registered business entity and want to enjoy the full benefit of crypto payment.',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 36.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    CustomTextButton(
                      onPressed: () {
                        Get.to(
                          () => const DashboardBottomTabs(),
                          transition: Transition.cupertino,
                        );
                      },
                      buttonText: 'Create Profile',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  profileCard({title, description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          setState(() => selectedProfileType = title);
          if (kDebugMode) {
            print(selectedProfileType);
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 24.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: selectedProfileType == title
                  ? apacePrimaryColor
                  : textFieldBorderColor,
              width: selectedProfileType == title ? 1.4 : 1.4,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RobText(
                title,
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: grayColor3,
                  height: 1.6,
                ),
              ),
              const VerticalSpace(12.0),
              RobText(
                description,
                style: GoogleFonts.dmSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: grayColor1.withOpacity(.65),
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
