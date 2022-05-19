import 'package:cryptocurrency_wallet/app/components/custom_text_button.dart';
import 'package:cryptocurrency_wallet/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/custom_icon_button.dart';

// ignore: non_constant_identifier_names
Widget OnboardingCard(
  context, {
  String? assetUrl,
  String? text,
  String? desc,
  var onPressed,
}) {
  var screen = MediaQuery.of(context).size;
  return Container(
    height: screen.height * .45,
    margin: const EdgeInsets.symmetric(
      horizontal: 24.0,
    ),
    decoration: BoxDecoration(
      color: const Color(0XFFF6F6F6),
      borderRadius: BorderRadius.circular(32),
    ),
    width: screen.width,
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(),
        Column(
          children: [
            RobText(
              text!,
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
                desc!,
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF666669),
                  height: 1.6,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        CustomIconButton(
          onPressed: onPressed,
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget WelcomeCard(
  context, {
  var onPressed,
}) {
  var screen = MediaQuery.of(context).size;
  return Container(
    height: screen.height * .45,
    margin: const EdgeInsets.symmetric(
      horizontal: 24.0,
    ),
    decoration: BoxDecoration(
      color: const Color(0XFFF6F6F6),
      borderRadius: BorderRadius.circular(32),
    ),
    width: screen.width,
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'By clicking "Sign Up", ',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: const Color(0XFF12141F),
                  height: 1.6,
                ),
              ),
              Text(
                'you agree to ',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: const Color(0XFF12141F),
                  height: 1.6,
                ),
              ),
              Text(
                'the ',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: const Color(0XFF12141F),
                  height: 1.6,
                ),
              ),
              Text(
                'Terms of Use ',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF52AA82),
                  height: 1.6,
                ),
              ),
              Text(
                'of Apace.',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: const Color(0XFF12141F),
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Flex(
                direction: Axis.horizontal,
                children: [
                  CustomTextButton(
                    onPressed: onPressed,
                    buttonText: 'Create an account',
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      'Already have ',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0XFF12141F),
                        height: 1.6,
                      ),
                    ),
                    Text(
                      'an account? ',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0XFF12141F),
                        height: 1.6,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.dmSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0XFF52AA82),
                          height: 1.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Input({
  String? hint,
  TextAlign? textAlign,
  String? errorText,
  TextStyle? style,
  TextStyle? hintStyle,
  TextStyle? labelStyle,
  TextEditingController? controller,
  String? label,
  Widget? prefix,
  int? max,
  var onChanged,
  TextInputType? input,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: input,
    decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        // contentPadding: EdgeInsets.all(10.0),
        prefixIcon: prefix,
        hintStyle: GoogleFonts.quicksand(textStyle: hintStyle),
        labelStyle: GoogleFonts.quicksand(textStyle: labelStyle),
        errorText: errorText),
    maxLength: max,
    style: GoogleFonts.quicksand(textStyle: style),
    onChanged: onChanged,
  );
}

// ignore: non_constant_identifier_names
Widget RobinCard({Widget? child, double? width}) {
  return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child);
}

// ignore: non_constant_identifier_names
Text RobText(String txt, {var style, var textAlign}) {
  return Text(txt,
      style: GoogleFonts.dmSans(textStyle: style), textAlign: textAlign);
}

// ignore: non_constant_identifier_names
ShapeBorder Round({double? radii}) {
  return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radii ?? 15.0));
}

// ignore: non_constant_identifier_names
TextStyle Common({var style}) {
  return GoogleFonts.quicksand(textStyle: style);
}

// ignore: non_constant_identifier_names
BoxDecoration Box({var shape}) {
  return BoxDecoration(
    borderRadius: shape,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromRGBO(78, 2, 251, 1), Color.fromRGBO(94, 47, 199, 1)],
    ),
  );
}
