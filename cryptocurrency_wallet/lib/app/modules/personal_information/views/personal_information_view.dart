import 'package:cryptocurrency_wallet/app/components/custom_text_button.dart';
import 'package:cryptocurrency_wallet/app/components/custom_text_field.dart';
import 'package:cryptocurrency_wallet/app/constants/colors.dart';
import 'package:cryptocurrency_wallet/app/modules/dashboard_bottom_tabs/views/dashboard_bottom_tabs_view.dart';
import 'package:cryptocurrency_wallet/app/modules/onboarding/views/widgets/onboarding_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          splashRadius: 20,
          icon: SvgPicture.asset('assets/svgs/arrow-left.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(height: 8.0),
                RobText(
                  'Personal Information',
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
                    'Here\'s what we know about you. Please do update it if there have been any recent changes.',
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
                  const SizedBox(height: 24.0),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/user_icon_dashboard_home.svg',
                        width: Get.width * .45,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    // spreadRadius: 1,
                                    color: Colors.black12,
                                    offset: Offset(2, 2))
                              ]),
                          child: SvgPicture.asset(
                            'assets/svgs/pen.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RobText(
                                'First Name',
                                style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0XFF5B5B60),
                                  height: 1.6,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            NormalTextField(
                              filled: true,
                              focusedBorderColor: textFieldBorderColor,
                              textController:
                                  TextEditingController(text: 'Kolawole'),
                              readOnly: true,
                              hintText: "Enter first name",
                              textCapitalization: TextCapitalization.words,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RobText(
                                'Last Name',
                                style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0XFF5B5B60),
                                  height: 1.6,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            NormalTextField(
                              filled: true,
                              focusedBorderColor: textFieldBorderColor,
                              textController:
                                  TextEditingController(text: 'Oluwafemi'),
                              hintText: "Enter last name",
                              textCapitalization: TextCapitalization.words,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RobText(
                          'Email Address',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF5B5B60),
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      NormalTextField(
                        filled: true,
                        focusedBorderColor: textFieldBorderColor,
                        textController: TextEditingController(
                            text: 'kolawoleolufemi@gmail.com'),
                        hintText: "Enter email address",
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RobText(
                          'Phone Number',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF5B5B60),
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      NormalTextField(
                        hintText: "Enter phone number",
                        textController:
                            TextEditingController(text: '9060785373'),
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset(
                            'assets/svgs/ngn_flag.png',
                            height: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RobText(
                          'Password',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF5B5B60),
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          Expanded(
                            child: NormalTextField(
                              filled: true,
                              focusedBorderColor: textFieldBorderColor,
                              hintText: 'Min. of 8 characters',
                              textController: TextEditingController(
                                text: '*************',
                              ),
                              textCapitalization: TextCapitalization.none,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: textFieldBorderColor, width: 1.4),
                              shape: BoxShape.circle,
                              color: const Color(0XFFEBEBEB),
                            ),
                            child: IconButton(
                              splashColor: Colors.transparent,
                              splashRadius: 26,
                              icon: SvgPicture.asset(
                                'assets/svgs/reset.svg',
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const CustomDialog();
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Column(
                      children: [
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            CustomTextButton(
                              onPressed: () {
                                Get.to(
                                  () => const DashboardBottomTabs(),
                                  transition: Transition.cupertino,
                                );
                              },
                              buttonText: 'Update',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  dialogContent(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: Get.width),
      child: Container(
        margin: EdgeInsets.zero,
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(32),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 24.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: [
            const SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Change Password',
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF12141F),
                  ),
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: SvgPicture.asset('assets/svgs/cancel.svg'),
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            const Divider(),
            const SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RobText(
                    'Current Password',
                    style: GoogleFonts.dmSans(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF5B5B60),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8.0),
                const NormalTextField(
                  hintText: 'Enter your current password',
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  isPasswordField: true,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RobText(
                    'New Password',
                    style: GoogleFonts.dmSans(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF5B5B60),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8.0),
                const NormalTextField(
                  hintText: 'Choose a new password',
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  isPasswordField: true,
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                CustomTextButton(
                  onPressed: () {
                    Get.back();
                  },
                  buttonText: 'Update Password',
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
