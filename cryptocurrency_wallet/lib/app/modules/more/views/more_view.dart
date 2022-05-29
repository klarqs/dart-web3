import 'package:cryptocurrency_wallet/app/modules/login/views/login_view.dart';
import 'package:cryptocurrency_wallet/app/modules/personal_information/views/personal_information_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 12.0),
                child: Text(
                  "More",
                  style: GoogleFonts.dmSans(
                    fontSize: 28,
                    letterSpacing: -1,
                    fontWeight: FontWeight.w800,
                    color: const Color(0XFF12141F),
                  ),
                ),
              ),
              // const Divider(),
              ListView(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  moreCard(
                    icon: 'assets/svgs/profile-circle.svg',
                    name: "Personal Details",
                    onTap: () {
                      Get.to(
                        () => const PersonalInformation(),
                        transition: Transition.cupertino,
                      );
                    },
                  ),
                  moreCard(
                    icon: 'assets/svgs/personalcard.svg',
                    name: "Business Details",
                    onTap: () {},
                  ),
                  moreCard(
                    icon: 'assets/svgs/card-send.svg',
                    name: "Payment",
                    onTap: () {},
                  ),
                  moreCard(
                    icon: 'assets/svgs/setting.svg',
                    name: "Account Settings",
                    onTap: () {},
                  ),
                  moreCard(
                    icon: 'assets/svgs/messages.svg',
                    name: "Support",
                    onTap: () {},
                  ),
                  moreCard(
                    icon: 'assets/svgs/messages.svg',
                    name: "Sign Out",
                    noIcon: true,
                    textColor: const Color(0XFFDE4557),
                    onTap: () {
                      Get.to(
                        () => const Login(),
                        transition: Transition.cupertino,
                      );
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

  moreCard({
    required String icon,
    required String name,
    bool noIcon = false,
    Color? textColor,
    required void Function() onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(18.0),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          width: Get.width,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(
              width: .2,
              color: const Color(0XFF282A3D),
            ),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 6,
                color: Colors.black.withOpacity(.08),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  noIcon
                      ? const SizedBox()
                      : SvgPicture.asset(
                          icon,
                        ),
                  noIcon ? const SizedBox() : const SizedBox(width: 16.0),
                  Text(
                    name,
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: textColor ?? const Color(0XFF282a3d),
                      height: 1.6,
                    ),
                  )
                ],
              ),
              noIcon
                  ? const SizedBox()
                  : SvgPicture.asset(
                      'assets/svgs/more-arrow-right.svg',
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
