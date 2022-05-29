import 'package:bot_toast/bot_toast.dart';
import 'package:cryptocurrency_wallet/app/constants/colors.dart';
import 'package:cryptocurrency_wallet/app/modules/confirm_otp/views/widgets/countdown.dart';
import 'package:cryptocurrency_wallet/app/modules/profile_type/views/profile_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_mail_app/open_mail_app.dart';
import '../../../constants/text_styles.dart';
import '../../onboarding/views/widgets/onboarding_elements.dart';

class ConfirmOTP extends StatefulWidget {
  const ConfirmOTP({Key? key}) : super(key: key);

  @override
  State<ConfirmOTP> createState() => _ConfirmOTPState();
}

class _ConfirmOTPState extends State<ConfirmOTP> with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this);

  void startTimer() {
    setState(() {
      animationController = AnimationController(
          vsync: this,
          duration: const Duration(
            minutes: 1,
          ));
      animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
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
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 16.0),
              RobText(
                'Confirm O.T.P',
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
                  'A 6-digit confirmation code was sent to your email address, please enter below',
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
            child: SizedBox(
              height: screen.height * .67,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      Form(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextFormField(
                                autofocus: true,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (pin1) {},
                                style: bodyText5.copyWith(
                                  color: grayColor3.withOpacity(.8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorWidth: .4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: textFieldBorderColor,
                                        width: 1.4),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: apacePrimaryColor, width: 1.4),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextFormField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  } else {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                onSaved: (pin2) {},
                                style: bodyText5.copyWith(
                                  color: grayColor3.withOpacity(.8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorWidth: .4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: textFieldBorderColor,
                                        width: 1.4),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: apacePrimaryColor, width: 1.4),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextFormField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  } else {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                onSaved: (pin3) {},
                                style: bodyText5.copyWith(
                                  color: grayColor3.withOpacity(.8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorWidth: .4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: textFieldBorderColor,
                                        width: 1.4),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: apacePrimaryColor, width: 1.4),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextFormField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  } else {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                onSaved: (pin4) {},
                                style: bodyText5.copyWith(
                                  color: grayColor3.withOpacity(.8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorWidth: .4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: textFieldBorderColor,
                                        width: 1.4),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: apacePrimaryColor, width: 1.4),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextFormField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  } else {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                onSaved: (pin5) {},
                                style: bodyText5.copyWith(
                                  color: grayColor3.withOpacity(.8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorWidth: .4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: textFieldBorderColor,
                                        width: 1.4),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: apacePrimaryColor, width: 1.4),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextFormField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                    showGeneralDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      barrierLabel: "Location Dialog",
                                      transitionDuration:
                                          const Duration(milliseconds: 0),
                                      pageBuilder: (_, __, ___) {
                                        return const Scaffold(
                                          backgroundColor: Colors.transparent,
                                          resizeToAvoidBottomInset: false,
                                          body: SizedBox.expand(
                                            child: SafeArea(
                                              child: Center(
                                                child:
                                                    // GradientCircularProgressIndicator(
                                                    //   radius: 24,
                                                    //   strokeWidth: 1.4,
                                                    //   gradientColors: [
                                                    //     Colors.red,
                                                    //     Colors.blue,
                                                    //     Colors.yellow,
                                                    //     Colors.green,
                                                    //   ],
                                                    // )
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                  strokeWidth: 1.4,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                    Future.delayed(
                                      const Duration(seconds: 3),
                                      () {
                                        Get.offAll(
                                          () => const ProfileType(),
                                          transition: Transition.cupertino,
                                        );
                                      },
                                    );
                                  } else {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                onSaved: (pin6) {},
                                style: bodyText5.copyWith(
                                  color: grayColor3.withOpacity(.8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                cursorWidth: .4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: textFieldBorderColor,
                                        width: 1.4),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                        color: apacePrimaryColor, width: 1.4),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60),
                      Countdown(
                        onPressed: () => startTimer(),
                        animation: StepTween(
                          begin: 60,
                          end: 0,
                        ).animate(animationController),
                      ),
                    ],
                  ),
                  Container(
                    width: 54,
                    height: 54,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFF6C4AED),
                    ),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      splashRadius: 32,
                      icon: SvgPicture.asset(
                        'assets/svgs/sms-notification.svg',
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        var result = await OpenMailApp.openMailApp();
                        if (!result.didOpen && !result.canOpen) {
                          BotToast.showText(text: "No mail apps installed");
                        } else if (!result.didOpen && result.canOpen) {
                          showDialog(
                            context: context,
                            builder: (_) {
                              return MailAppPickerDialog(
                                mailApps: result.options,
                              );
                            },
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
