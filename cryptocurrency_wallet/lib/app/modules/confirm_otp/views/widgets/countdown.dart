import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';

class Countdown extends AnimatedWidget {
  // ignore: use_key_in_widget_constructors
  const Countdown({
    required this.animation,
    required this.onPressed,
  }) : super(
          listenable: animation,
        );
  final Animation<int> animation;
  final void Function() onPressed;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString().padLeft(2, '0')}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    return Column(
      children: [
        Text(
          timerText == '00:00' ? 'Didn’t get the mail?' : 'Resend OTP in',
          style: GoogleFonts.dmSans(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0XFF666669),
            height: 1.6,
          ),
          textAlign: TextAlign.center,
        ),
        timerText == '00:00'
            ? SizedBox(
                height: 32,
                child: TextButton(
                  onPressed: onPressed,
                  child: Text(
                    'Resend',
                    style: bodyText5.copyWith(
                      color: apaceAccentColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      height: 1.34,
                      letterSpacing: .8,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  timerText,
                  style: bodyText5.copyWith(
                    color: apaceAccentColor,
                    fontWeight: FontWeight.w600,
                    height: 1.34,
                    letterSpacing: .8,
                    fontSize: 15,
                    leadingDistribution: TextLeadingDistribution.even,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
      ],
    );
  }
}
